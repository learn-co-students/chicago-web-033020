class ApplicationController < Sinatra::Base
  # Here is where we define which urls will work in our app
  # and how they will work
  set :views, 'app/views'

  # This is a route! 
  # HTTP VERB "url pattern" block to run
  get "/" do
    @calculated = ( 2+2 == 4 )
    erb :index
  end

  post "/" do
    puts "HTHETIWENGIRNVIWNVEINWVIENBIENBINWEB!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!NO"
    redirect "/"
  end

  get "/cats" do
    @temporary = "SCHRODINGER, NOOOOOOO!!!"
    # puts params
    p @temporary
    redirect "/meows/mrrraaaouw"
  end

  get "/meows/:sound" do
    puts "Value of temporary:"
    p @temporary
    puts params
  end

  get "/books" do
    # show all the books
    @books = Book.all
    erb :books_index
  end

  get "/books/:id" do
    @book = Book.find(params[:id]) # { id: 2 }
    p @book
    # show specific book
    erb :show_book
  end
end
