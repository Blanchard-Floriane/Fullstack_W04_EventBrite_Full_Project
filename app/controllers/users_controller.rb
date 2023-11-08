class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def check_user
    @user = User.find(params[:id])
    if current_user.id != @user.id
      redirect_to root_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
