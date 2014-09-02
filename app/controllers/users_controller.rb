class UsersController < ApplicationController
	
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user
		else 
			render 'new'
		end 
	end

	def edit
		@user.find(params[:id])
	end

	def update
		@user.update(user_params)

		if @user.update
			redirect_to @user
		else 
			render 'edit'
		end 
	end

	def destroy
		@user = User.find(params[:id]).destroy
		redirect_to '/'
	end
end
