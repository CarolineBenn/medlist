Rails.application.routes.draw do
  
  devise_for :users
  resources :lists do
    collection { post :import }
  end

  # get "/:page" => "pages#show"
  # get "/:page/edit" => "pages#edit"

  resources :pages

  root to: 'lists#index'

end
