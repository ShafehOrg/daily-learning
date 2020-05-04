class Api::SectionsController < ApplicationController
  def index
    @sections = Section.all
    render :index
  end

  def show
    query = params[:id]

    if query.to_i > 0
      @section = Section.find_by(id: params[:id])
      render :show
    else 
      @section = Section.find_by(title_he_tr: params[:id].capitalize)
      if @section
        render :show
      else
        render json: ["Not Found"], status: 404
      end
    end
  end
end
