class RestaurantsController < ApplicationController
	def index
		@user = User.find(params[:user_id])

		@restaurants = @user.kid_friendly
	end
end
