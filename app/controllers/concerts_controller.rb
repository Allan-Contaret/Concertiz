class ConcertsController < ApplicationController
	def index
		@concerts = Concert.all
	end

	def show
		if Concert.exists?(params[:id])
			@concert = Concert.find(params[:id])
		else
			redirect_to concerts_path
		end
	end

	def new
		@concert = Concert.new
	end

	def edit
		if Concert.exists?(params[:id])
			@concert = Concert.find(params[:id])
		else
			redirect_to concerts_path
		end
	end

	def create
		@concert = Concert.new(concert_params)

		if @concert.save
			redirect_to @concert
		else
			render 'new'
		end
	end

	def update
		@concert = Concert.find(params[:id])

		if @concert.update(concert_params)
			redirect_to @concert
		else
			render 'edit'		
		end
	end

	def destroy
		@concert = Concert.find(params[:id])
		@concert.destroy

		redirect_to concerts_path
	end

	private
		def concert_params
			params.require(:concert).permit(:name, :address, :tickets_available, :concert_date, :concert_hall, :description)
		end
end
