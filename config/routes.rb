Rails.application.routes.draw do
  root to: "users#index"
  resources :users do
    collection do
      get :search
    end
  end
end