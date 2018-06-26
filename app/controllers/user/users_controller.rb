class User::UsersController < ApplicationController


	def index
		@lives = Live.all
	end

	def show
		@reserves = Reserve.where(user_id: current_user)
		@user = User.find(params[:id])
	end

	private

	    def correct_user
	      @user = User.find(params[:id])
	      redirect_to(root_path) unless current_user?(@user)
	    end

end
