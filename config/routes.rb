Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  #モデルhelloのるーていんぐ
  get 'hello/index' => 'hello#index'

  get 'tweets/home' => 'tweets#index'

  get 'tweets/mypage' => 'tweets#mypage'
  post 'tweets' => 'tweets#create'

  #ルーティングの設定 
  # get (URLを実際のコードに割り振る。データを取得する処理に使う。)

  # get "URLパターン"、=> "コントローラ名"#"アクション名"
  # localhost:3000/tweets/homeにアクセスすると，indexメソッドを呼び出せるようになる。

  # post (情報の新規追加のとき使用する。)
  # データを変更したいときなどに使用（キャッシュしない） 

  get 'tweets/:id' => 'tweets#show',as: 'tweet'
  post 'tweets/:id' => 'tweets#show'

  # editとupdateの追加
  patch 'tweets/:id' => 'tweets#update'
  delete 'tweets/:id' => 'tweets#destroy'
  get 'tweets/:id/edit' => 'tweets#edit', as: 'edit_tweet'

  root 'hello#index' 
end
