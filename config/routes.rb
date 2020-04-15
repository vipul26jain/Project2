Rails.application.routes.draw do

  devise_for :users, :controllers=> { registrations: "users/registrations", confirmations: "users/confirmations", sessions: "users/sessions", passwords: "users/passwords"}
  # get 'home/index'
  root to: "home#index"

  devise_scope :users do
	post '/set_fav' => 'users/custom#set_fav', as: :set_fav
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
