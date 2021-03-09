Rails.application.routes.draw do

	devise_for :admin_users, ActiveAdmin::Devise.config
	ActiveAdmin.routes(self)
	devise_for :users

	get "/about" => "pages#about"
	get "/skill" => "pages#skill"
	get "/contact" => "pages#contact"
	get "/hire" => "pages#hire"

	root "pages#about"

	resources :projects
	resources :contacts

end