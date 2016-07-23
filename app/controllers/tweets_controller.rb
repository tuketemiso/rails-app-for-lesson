class TweetsController < ApplicationController
  # before_actionを用いてログインしていなければログイン画面へ返す
  # ヒント: authenticate_〇〇!（deviseのヘルパーメソッド）

  def index
    # allを使ってTweetの全レコードの取得しインスタンス変数に格納
      #→ ページングする場合は...  →  参照：「ページング機能を実装しよう」
        #→  並び順かえたい場合は...  →  「rails order」で検索
              
    # form_forに渡すインスタンスを生成

  end

  def create
    # ストロングパラメーターを元にインスタンスを生成

    # 投稿したuser_idをtweetのuser_idカラムにセット　→　参照：「[railsブログを作ろう②]ユーザーとポストを紐付けよう！」

    # データベースへ保存する  →  参照：week2「データの保存、抽出」

    # ツイート一覧へリダイレクト　→　参照：week2「コントローラーの様々なメソッドを学ぶ」

  end


  def destroy
    # レコードを１件取得　→ 参照：week2「データの保存、抽出」

    # 取得したレコードの削除　→  参照：week2「データの保存、抽出」

    # ツイート一覧へリダイレクト　→　参照：week2「簡易掲示板を作ろう３」

  end

  # ここからprivateメソッド
  private
    #ストロングパラメーターを設定
    def tweet_params

    end
end








