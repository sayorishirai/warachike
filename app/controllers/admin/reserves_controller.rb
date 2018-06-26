class Admin::ReservesController < ApplicationController

	def index
    @reserves = Reserve.all
		@reserve = Reserve.where(user_id: current_user)
	end

	def show
		@reserve = Reserve.find(params[:id])
	end

	def edit
  		@reserve = Reserve.find(params[:id])
  	end

  	def update
  		@reserve = Reserve.find(params[:id])
        @reserve.update(user)
        redirect_to admin_reserves_path
  	end

	def destroy
  		@reserve = Reserve.find(params[:id])
		redirect_to admin_reserves_path
  	end

	private
  	def reserve_params
  		params.require(:reserve).permit(:name, :price)
    end

end
