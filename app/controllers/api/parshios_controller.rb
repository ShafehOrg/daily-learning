class Api::ParshiosController < ApplicationController
  def index
    @parshios = Parsha.all
    render json: @parshios
  end

  def show
    @parsha = Parsha.find(params[:id])
    if @parsha
      render json: @parsha.full_aliyos
    else
      render json: ["Not Found"], status: 404
    end
  end
end
