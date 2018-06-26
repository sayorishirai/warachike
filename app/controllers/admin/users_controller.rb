class Admin::UsersController < ApplicationController
	def index
		@lives = Live.all
		@users = User.all
	end

	def show
		@lives = Live.all
		@user = User.find(params[:id])
	end

	def new
  		@user = User.new
    end

    def edit
  		@user = User.find(params[:id])
  	end

  	def update
  		@user = User.find(params[:id])
        @user.update(user)
        redirect_to admin_user_path
  	end

	private
  	def users_params
  		params.require(:user).permit(:name, :name_phonetic, :phone_number, :email)
  	end

end
