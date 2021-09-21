class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def destroy
  end

  def index
    @user = User.find(params[:id])
  end

  def create
  end

end
