class User::LivesController < ApplicationController

	def show
		@reserve = Reserve.new
		@live = Live.find(params[:id])
	end
end
