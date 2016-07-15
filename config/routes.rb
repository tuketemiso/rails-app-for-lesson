Rails.application.routes.draw do


  devise_for :users

  # ツイート一覧画面へのルーティングを定義
  # 新規ツイート(createアクション)へのルーティングを定義
  # ツイート削除(destroyアクション)へのルーティングを定義
  resources :tweets do
    resource :favorites, only:[:create, :destroy]
  end

# ---------------------------------------------
# 優秀者用発展

  # resources :users, only: [:index, :show] do
  # end

# ---------------------------------------------


# root　を使ってtweetsコントローラーのindexアクションへのルーティングを定義
  root "tweets#index"


end
