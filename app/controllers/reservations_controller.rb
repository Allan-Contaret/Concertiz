class ReservationsController < ApplicationController

	def index
		@reservations = Reservation.all
	end

	def new

		@reservation = Reservation.new		
	end

	def create
		@reservation = Reservation.new(reservation_params)
		@reservation.user_id = current_user.id
		@reservation.concert_id = current_concert.id
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