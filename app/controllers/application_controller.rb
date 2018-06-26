class ApplicationController < ActionController::Base

	# 新規登録時に、使用できるカラムを設定
	before_action :configure_permitted_params, if: :devise_controller?
	# 全ページに@userをセット
	# before_action :set_user

	protected

	def configure_permitted_params
  		devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :name, :name_phonetic, :phone_number])
  		devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :name, :name_phonetic, :phone_number])
 	end



end
