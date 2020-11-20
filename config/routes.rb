Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'tweets/home' => 'tweets#index'
  get 'tweets/mypage' => 'tweets#mypage'
  post 'tweets' => 'tweets#create'

  root to: 'tweets#index' 
end
