class BooksController < ApplicationController

  def index
    @books = Book.all

    # @author = Author.find(Book.find(:author_id)).name
  end

  def create
    @book = Book.create(book_params)

    if @book.save
      redirect_to books_path
    else
      render 'new'
    end
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to books_path
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  def user_list
    @user_list = "aaaa"
  end

  private

    def book_params
      params.require(:book).permit(:title, :total_page, :author_id)
    end
end
