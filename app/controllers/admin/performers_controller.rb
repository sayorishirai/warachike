class Admin::PerformersController < ApplicationController

	def index
		@performer = Performer.new
	end

	def create
        @performer = Performer.new(performer_params)
        @performer.save
        redirect_to '/admin/performers'
    end

	private

    def performer_params
        params.require(:performer).permit(:member_name,)
    end

end




