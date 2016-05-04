class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(users_params)
    if @user.save
      flash[:success] =  @user.name+" "+"أهلا بيك يا "
      redirect_to @user
    else
      render 'new'
    end
  end

  private
  def users_params
    params.require(:user).permit(:name, :email, :username, :password, :password_confirmation,:avatar)
  end
end