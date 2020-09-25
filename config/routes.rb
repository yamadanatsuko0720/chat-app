Rails.application.routes.draw do
  get 'messages/index'
  root to:"messages#index" 
  #rルートパスへのアクセスがあったらmessagesコントローラーのindexアクションが呼び出される
  #ルートパスへのアクセスの時はHTTPメソッドを省略できる 自動でgetと判断してくれる
end
