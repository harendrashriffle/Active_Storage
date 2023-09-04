Rails.application.routes.draw do
  get 'users/download', to: 'users#download'
  get 'pics/:id', to: 'pics#show'
  resource :users, only: [:create,:show,:destroy]
  resource :pics, only: [:create,:show]
end
