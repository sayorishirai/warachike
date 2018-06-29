Rails.application.routes.draw do

	# 管理者側のpath
  devise_for :admins, controllers: {
  	sessions:      'admins/sessions',
  	passwords:     'admins/passwords',
  	registrations: 'admins/registrations'
	}

	# ユーザー側のpath
	devise_for :users, controllers: {
		sessions:      'users/sessions',
		passwords:     'users/passwords',
		registrations: 'users/registrations'
	}

	# ページを表示
	# 生成されるpath => ooo_path
	scope module: :user do
		# リクエストフォーム
		# get '/users/request/' => 'users#request'
		resources :users, only: [:show, :index,]
		resources :lives, only: [:show, :index,]
		resources :reserves, only: [:create, :index, :edit, :update, :destroy]
		get '/reserve/ticket/page/1' => 'reserves#tickets_page_1'
		# 支払い方法選択
		# post '/cart/buy/:id' => 'carts#buy_cds_update'
		resources :supports, only: [:show, :index,]
	end

	# 管理者ページを表示
	# 生成されるpath => admin_ooo_path
	namespace :admin do
		resources :users, only: [:index, :show, :edit, :update, :destroy]
		resources :reserves
		resources :lives
		# フォームのリダイレクト先
		post '/admin/lives' => 'admins/lives#create'
	end

	# TOP画面
 	root 'user/users#index'

	# adminのマイページのみ、変更
	# admin/admins/:id  => admins/:id
	scope module: :admin do
		resources :admins, only: [:show]
	end
end
