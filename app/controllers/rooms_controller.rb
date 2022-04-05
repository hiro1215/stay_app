class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params.require(:room).permit(:user_id, :name, :introduction, :price, :address, :image))
    if @room.save
      redirect_to :root
    else
      render "new"
    end
  end
  def show
    @room = Room.find(params[:id])
  end

  def search
    if params[:name].present?
      @rooms = Room.where('name LIKE ?', "%#{params[:name]}%")
    else
      @rooms = Room.none
    end
  end
end
