class BooksController < ApplicationController
  get '/books' do
    @books = Book.all
    erb :'books/index'
  end

  get '/books/new/?' do
    erb :'books/new'
  end

  post '/books' do
    # p "*************************************"
    # p "*************************************"
    # p params[:title]
    # Book.create(title: params[:title], author: params[:author], snippet: params[:snippet])
    book = Book.create(params)
    redirect "/books/#{book.id}"
  end

  # Show
  get '/books/:id' do
    find_book
    erb :'books/show'
  end


  get '/books/:id/edit' do
    find_book
    erb :'books/edit'
  end

  put '/books/:id' do
    find_book
    p @book
    p "*************************************"
    p "*************************************"
    p params[:book]
    @book.update(params[:book])
    redirect "/books/#{@book.id}"
  end

  delete '/books/:id' do
    find_book
    @book.destroy
    redirect '/books'
  end

  private
  
  def find_book
    @book = Book.find(params[:id])
  end
end
