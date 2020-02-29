Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'sessions#new'
  get '/homes', to: 'homes#show'
  resources :sessions, only: [:create, :new]
  match '/logout' => 'sessions#destroy', via: [:delete]
end
