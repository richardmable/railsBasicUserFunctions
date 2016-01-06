class UsersController < ApplicationController
	has_many :posts

	def index 
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:notice] = "Your account was created succesfully!"
			redirect_to user_path @user
		else
			flash[:alert] = "Your account was not created."
			redirect_to new_user_path
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end
	
	def update
		@user = User.find(params[:id])
		@user = User.update(params[:user])
		redirect_to user_path @user
	end

end
