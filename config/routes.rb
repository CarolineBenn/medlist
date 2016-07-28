Rails.application.routes.draw do
  
  resources :pages
  resources :lists do
    collection { post :import }
  end

  get "/:page" => "pages#show"
  get "/:page/edit" => "pages#edit"

  root to: 'lists#index'

end
