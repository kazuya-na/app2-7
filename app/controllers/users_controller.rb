class UsersController < ApplicationController
  def index
    @users = User.all
    @books = Book.all
  end

  def show
    @user = User.find(params[:id])
    @books = Book.all
    @book = Book.new
  end

  def update
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :email, :encrypted_password, :reset_password_token)
  end
end
