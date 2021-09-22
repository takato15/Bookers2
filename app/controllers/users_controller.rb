class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = Book.all
  end

  def destroy
    flash[:notice] = "Signed out successfully."
  end

  def edit
    @user = User.find(params[:id])
    @book = Book.find(params[:id])
      if @book.user == current_user
        render :edit
      else
        redirect_to user_path(@user.id)
      end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  def index
    @user = current_user
    @users = User.all
  end

  def create
    flash[:notice] = "Signed in successfully."
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
