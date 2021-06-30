class ReservationsController < ApplicationController
  
  def index
    @reservations = Reservation.all.includes(:rooms)
    @rooms = Room.all
  end
  
 
  def create
    @reservation = Reservation.new(params.require(:reservation).permit(:start_date, :end_date, :number_of_people, :total_price))
    if @reservation.save
      flash[:notice] = "予約登録しました"
      redirect_to :reservations
    else
      render "index"
    end
  end
 
  def show
  end
 
  def edit
  end
 
  def update
  end
 
  def destroy
      @reservation = Reservation.find(params[:id])
      @reservation.destroy
      flash[:notice] = "予約を削除しました"
      redirect_to :reservations
  end
end

