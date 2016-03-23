class UsersController < ApplicationController
  
  def index
    @user = User.new
    @users = User.all
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path , notice: 'ユーザーを保存しました'
    else
      @users = Project.all
      flash.now[:alert] = 'ユーザーの保存に失敗しました'
      render 'users_path'
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
