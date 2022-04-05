class ReservesController < ApplicationController
	def create
    @reserve = Reserve.new
    @reserve = Reserve.new(params.require(:reserve).permit(:start_date, :end_date, :person_num))
    binding.pry
    if @reserve.save
      redirect_to :root
    else
      render "show"
    end
  end
end
