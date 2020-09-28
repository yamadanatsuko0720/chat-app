Rails.application.routes.draw do
  devise_for :users
  #ユーザー機能に必要なルーティングを一気に生成している(自動生成)
  root to:"rooms#index" 
  #ルートパスへのアクセスがあったらmessagesコントローラーのindexアクションが呼び出される
  #ルートパスへのアクセスの時はHTTPメソッドを省略できる 自動でgetと判断してくれる
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
