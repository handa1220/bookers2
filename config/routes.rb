Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
   }

   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

   resources :books, only: [:edit, :update, :create, :index, :show, :destroy]
   resources :users, only: [:edit, :index, :show, :update]

   get 'home/about' => 'homes#about', as:'about'

end
