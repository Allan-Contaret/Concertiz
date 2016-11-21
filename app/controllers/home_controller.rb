class HomeController < ApplicationController
	layout "application.html.erb"
	def index
		@concerts = Concert.order(concert_date: :desc).limit(4)
	end
end
