Rails.application.routes.draw do
  
  resources :lists do
    collection { post :import }
  end

  get "/:page" => "pages#show"

  root to: 'lists#index'

end
