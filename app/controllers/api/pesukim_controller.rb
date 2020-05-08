class Api::PesukimController < ApplicationController
  def index 
    # /api/:book_id/:perek_id/pesukim
    # "book_id"=>"bereishit", "perek_id"=>"4"
    book = Book.find_by(title_he_tr: Book.find_title_he_tr(params[:book_id]))
    @perek = params[:perek_id]

    if book
       @num_pesukim = Pasuk
        .where(book_id: book.id, perek: @perek)
        .distinct
        .count

       if @num_pesukim > 0
          render json: @num_pesukim
       else
          render json: ['not found'], status: 404
       end
    else
      render json: ['pasuk not found'], status: 404
    end
  end

  def show
    # /api/:book_id/:perek_id/:id
    # "book_id"=>"tehillim", "perek_id"=>"1144", "id"=>"4"
    @book_name = params[:book_id].downcase
    book = Book.find_by(title_he_tr: Book.find_title_he_tr(@book_name))
    @perek = params[:perek_id]

    if book
      @pasuk = Pasuk
        .find_by(book_id: book.id, perek: @perek, number: params[:id])
      
      if @pasuk
        render :show
      else
        render json: ['pasuk not found'], status: 404
      end
    else
      render json: ['book/perek/pasuk not found'], status: 404
    end
  end
end
