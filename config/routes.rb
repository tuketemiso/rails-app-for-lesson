Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  devise_for :users
  # deviseが自動生成するルーティング
  # ツイート一覧画面へのルーティングを定義
  resources :users, only: [:index, :edit, :update, :show] do
    get :favorites, on: :member
  end


# ---------------------------------------------
# 発展課題
  # resourcesを制限する場合
    # resources :users, only: [:index, :show] do
    # end


  #お気に入り機能をツイートに紐付ける場合  
  resources :tweets do
    resource :favorites, only: [:create, :destroy]
  end
# ---------------------------------------------


# ルートパス　でアクセスした時にツイート一覧へのルーティングを定義
root 'tweets#index'

end
