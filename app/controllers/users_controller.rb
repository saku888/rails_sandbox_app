class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params[:size])
    @user.image = user_params[:image]
    if @user.save
      redirect_to user_path(@user)
    end
  end

  private
    def user_params
      params.require(:user).permit(:image, size: [:width, :height])
    end
end
