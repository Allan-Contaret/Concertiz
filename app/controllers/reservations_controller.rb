class ReservationsController < ApplicationController

	def index
		@reservations = Reservation.all
	end

	def new
		@reservation = Reservation.new(concert_id: params[:concert_id])
		@concert = Concert.find(params[:concert_id])
	end

	def create
		@reservation = Reservation.new(reservation_params)
		if @reservation.save
			redirect_to root_url
		else
			render json: @reservation.errors
		end
	end
	private
	def reservation_params
		params.require(:reservation).permit(:name, :firstname, :email, :tickets_number)
		
	end
		
	end