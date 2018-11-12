Rails.application.routes.draw do
  root "friends#index"
  
  resources :friends do
    resources :telephones, only: [:create, :destroy]
  end
end
