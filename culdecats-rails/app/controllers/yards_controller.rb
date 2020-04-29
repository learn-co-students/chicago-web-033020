class YardsController < ApplicationController
  before_action :find_yard, only: [:show, :edit, :update]
  before_action :get_cats, only: [:new, :edit]

  def show
  end

  def index
    @yards = Yard.all
  end

  def new
    p '*' * 75
    p flash[:errors]
    @yard = Yard.new(flash[:yard_attributes])
  end

  def create
    @yard = Yard.new(yard_params)
    if @yard.save
      flash[:affirms] = "Yard created! You successfully saved `#{@yard.title}`"
      redirect_to @yard
    else
      flash[:alerts] = "Oops! Something went wrong. Sorry about cat."
      flash[:errors] = @yard.errors.full_messages
      flash[:yard_attributes] = yard_params
      p '*' * 75
      p flash[:errors]
      redirect_to new_yard_path
    end
  end

  def edit
  end

  def update
    # If the found yard is updated with valid param data,
    @yard.assign_attributes(yard_params)
    if @yard.valid?
      # Save the yard
      @yard.save
      flash[:affirms] = "Yard updated! You successfully saved `#{@yard.title}`"
      # and redirect to its show,
      redirect_to @yard
    else
      # otherwise, rerender the form and let the user try again
      # while also giving feedback on what didn't work
      get_cats
      render 'edit'
    end
  end

  private

  def yard_params
    params.require(:yard).permit(:title, :size, :cat_id)
  end

  def get_cats
    @cats = Cat.all
  end

  def find_yard
    @yard = Yard.find(params[:id])
  end
end