class HomeController < ApplicationController
	layout "application.html.erb"
	def index
		@concerts = Concert.order(created_at: :desc).limit(4)
	end
end
