class UsersController < ApplicationController
  
  def edit
    
  end

  def index
    @book = Book.new
    @users = User.all
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end

  def update 
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
end
