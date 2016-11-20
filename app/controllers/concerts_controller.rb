class ConcertsController < ApplicationController
	def index
	end

	def new
		@concert = Concert.new
	end

	def create
		@concert = Concert.new(concert_params)

		if @concert.save
			redirect_to @concert
		else
			render 'new'
		end
	end

	private
		def concert_params
			params.require(:concert).permit(:name, :address)
		end
end
