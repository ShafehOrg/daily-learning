class Api::PerakimController < ApplicationController
  def index 
    # /api/:bereishit/perakim
    # "book_id"=>"bereishit"

    book = Book.find_by(title_he_tr: Book.find_title_he_tr(params[:book_id]))
    if book
       @perek = Pasuk
        .select(:perek)
        .where(book_id: book.id)
        .distinct
        .count

       if @perek > 0
          render json: @perek
       else
          render json: ['book not found'], status: 404
       end
    else
      render json: ['sefer + perek not found'], status: 404
    end
  end

  def show
    # /api/bereishit/1
    # "book_id"=>"bereishit", "perek_id"=>"1"
    @book_name = params[:book_id].downcase
    book = Book.find_by(title_he_tr: Book.find_title_he_tr(params[:book_id]))
    @perek = params[:perek_id]
    if book
       @pesukim = Pasuk
        .where(book_id: book.id, perek: @perek)
        .order(:number)
       if @pesukim.length > 0
          render :show
       else
          render json: ['perek not found'], status: 404
       end
    else
      render json: ['sefer + perek not found'], status: 404
    end
  end
end
