class User::ReservesController < ApplicationController

	# お客様情報入力
	 def tickets_page_1
	 end

	# def tickets_page_2
	# 	@live = Live.find(params[:id])
	# end

	# def tickets_page_3
	# 	@live = Live.find(params[:id])
	# end

	def create
		reserve = Reserve.new(reserve_params)
		reserve.save
    	redirect_to reserve_ticket_page_1_path
  	end

  	def update
  		@reserve = Reserve.find(params[:id])
        @reserve.update(reserve_params)
        redirect_to admin_reserves_path
  	end

	private

    def reserve_params
        params.require(:reserve).permit(:seets, :price, :user_id, :live_id, :name)
    end

end






