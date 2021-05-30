class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book created"  
      redirect_to @book 
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      
      redirect_to @book
      flash[:notice] = "Book updated"
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to root_path
    flash[:notice] = "Book deleted"
  end

  private
    def book_params
      params.require(:book).permit(:title, :author, :genre, :price, :published_date)
    end
end
