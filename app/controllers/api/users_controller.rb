class Api::UsersController < ApplicationController
  def index
    render json: ["Bad Request"], status: 400
  end

  def create
    @user = User.new(user_params) 
    if @user.save
      log_in(@user)
      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  private 

  def user_params
    params.require(:user).permit(:name, :username, :email, :password)
  end
end
