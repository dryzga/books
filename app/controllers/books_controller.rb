class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.create(params[:book])
    flash[:notice] = "New book added."
    redirect_to books_path
  end
  
end
