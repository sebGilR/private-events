class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: "Successfully signed up"
    else
      render :new
    end
  end

  def show
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
