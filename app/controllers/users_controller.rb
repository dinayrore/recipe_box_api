#
class UsersController < ApplicationController
  def show
    @user = User.find params[:id]
    render json: @user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      render :show
    else
      render_error @user.errors.full_messages
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
