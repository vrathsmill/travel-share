class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end

  # def login_page
  # end
  #
  # def login
  #   byebug
  #   @user = User.find_by(username: params[:username])
  #   redirect_to user_path(@user.id)
  # end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name,:last_name, :email, :bio, :admin)
  end

end
