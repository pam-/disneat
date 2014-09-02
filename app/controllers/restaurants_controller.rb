class RestaurantsController < ApplicationController
	def index
		@restaurants = Restaurant.all
		@user = User.find(params[:user_id])
	end
end
