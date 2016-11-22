class ReservationsController < ApplicationController

	before_action :find_concert

	def index
		@reservations = Reservation.all
		@concert = Concert.find(params[:concert_id])
	end

	def new
		@reservation = Reservation.new(concert_id: params[:concert_id], user_id: current_user.id)
		@concert = Concert.find(params[:concert_id])
		@user = User.find(current_user.id)
	end

	def create
		@reservation = Reservation.new(reservation_params)
		@reservation.concert = Concert.find(params[:concert_id])
		@reservation.user = User.find(current_user.id)
		@concert.tickets_available -= @reservation.tickets_number
		if @reservation.save
			@concert.save
			redirect_to root_url
		else
			render json: @reservation.errors
		end
	end
	private
	def reservation_params
		params.require(:reservation).permit( :tickets_number)
		
	end

	private
	def find_concert

		@concert = Concert.find(params[:concert_id])
		
	end
		
	end