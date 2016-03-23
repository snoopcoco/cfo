class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]
  
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
  
  def edit
  end
  
  def update
    if @user.update(user_params)
      redirect_to users_path , notice: 'ユーザーを変更しました'
    else
      render 'edit'
    end
  end
  
  def destroy
    @user.destroy
    redirect_to users_path , notice: 'ユーザーを削除しました'
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
  def set_user
      @user = User.find(params[:id])
  end
end