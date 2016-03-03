class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    @book.title = params[:book][:title]
    @book.photo_url = params[:book][:title]
    @book.price = params[:book][:price]
    @book.author_id = params[:book][:author_id]
    @book.save ? (redirect_to books_path) : (render :new)
  end

  def show
    @book = Book.find_by id: params[:id]
  end

  def edit
    @book = Book.find_by id: params[:id]
  end

  def update
    @book = Book.find_by id: params[:id]
    @book.title = params[:book][:title]
    @book.photo_url = params[:book][:photo_url]
    @book.price = params[:book][:price]
    @book.author_id = params[:book][:author_id]
    @book.save ? (redirect_to book_path) : (render :edit)
  end

  def delete
    @book = Book.find_by id: params[:id]
    @book.destroy
    redirect_to books_path
  end
end
