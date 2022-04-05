class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
    @room = Room.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :age, :introduction))
    if @user.save
      redirect_to :users
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
    @room = Room.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  
end
