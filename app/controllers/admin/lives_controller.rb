class Admin::LivesController < ApplicationController

	def index
		@live = Live.new
	end

	def create
        @live = Live.new(live_params)
        @live.save
        redirect_to admin_lives_path
    end

    def update
        @live = Live.find(params[:id])
        @live.update(live_params)
        redirect_to admin_lives_path
    end

	private

    def live_params
        params.require(:live).permit(:name, :date, :time, :theater, :performer, :price, :detail)
    end

end
