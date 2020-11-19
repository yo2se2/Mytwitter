Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'tweets/home' => 'tweets#index'
  get 'tweets/mypage' => 'tweets#mypage'

  root 'twitter#index' 
end
