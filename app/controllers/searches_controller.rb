class SearchesController < ApplicationController
	def index
		@searches = Concert.where("name LIKE ?", "%#{params[:query]}%")
	end
end

