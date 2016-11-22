class ReservationsController < ApplicationController

	before_action :find_concert

	def index
		@reservations = Reservation.all
	end

	def new
		@reservation = Reservation.new(concert_id: params[:concert_id])
		@concert = Concert.find(params[:concert_id])
	end

	def create
		@reservation = Reservation.new(reservation_params)
		@reservation.concert = Concert.find(params[:concert_id])
		if @reservation.save
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