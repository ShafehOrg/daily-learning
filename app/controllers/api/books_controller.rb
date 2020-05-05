class Api::BooksController < ApplicationController

  def index
    @books = Book.all
    render :index
  end

  def show
    query = params[:id]

    if query.to_i > 0
      @book = Book.find_by(id: params[:id])
      render :show
    else 
      @book = Book.find_by(title_he_tr: params[:id].capitalize)
      if @book
        render :show
      else
        render json: ["Not Found"], status: 404
      end
    end
  end
end
