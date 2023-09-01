Rails.application.routes.draw do
  get 'users/download', to: 'users#download'
  resources :users, only: [:index,:create,:show,:destroy]
  resource :pics, only: [:create,:show]
end
