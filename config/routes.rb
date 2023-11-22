Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :tweets

  get 'posts/overview' => 'tweets#overview'
  get 'posts/kojin' => 'tweets#kojin'
  get 'posts/dantai' => 'tweets#dantai'
  get 'posts/event' => 'tweets#event'
  get 'posts/infomation' => 'tweets#infomation'
  
  root 'tweets#index'

end