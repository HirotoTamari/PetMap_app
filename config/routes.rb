Rails.application.routes.draw do

  #ログイン
  get "login" => "users#login_form"             #ログインフォーム
  post "login" => "users#login"                 #ログイン
  post "logout" => "users#logout"               #ログアウト

  #提案
  get "posts/index" => "posts#index"            #提案一覧
  get "posts/:id" => "posts#show"               #投稿の詳細
  post "posts/create" => "posts#create"         #作成
  get "posts/:id/edit" => "posts#edit"          #編集
  post "posts/:id/update" => "posts#update"     #編集の実行
  post "posts/:id/destroy" => "posts#destroy"   #削除

  #マイページ
  post "users/:id/update" => "users#update"     #編集の実行
  get "users/:id/edit" => "users#edit"          #アカウント編集
  post "users/create" => "users#create"         #新規登録の実行
  get "signup" => "users#new"                   #新規登録
  get "users/:id" => "users#index"            #アカウント詳細

  #マップ
  root to: 'maps#index'
  resources :maps, only: [:index]

  get '/maps' => 'maps#map'
  get "maps/about" => "maps/about"

  #マイルート
  get "routes" => "routes#index"                #ルートの作成・編集
  post "routes/create" => "routes#create"         #作成
  get "routes/:id" => "routes#show"               #投稿の詳細
  get "routes/:id/edit" => "routes#edit"          #編集
  post "routes/:id/update" => "routes#update"     #編集の実行
  post "routes/:id/destroy" => "routes#destroy"   #削除

end
