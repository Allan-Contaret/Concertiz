class HomeController < ApplicationController
	layout "application.html.erb"
	def index
		@concerts = Concert.all
	end
end
