class TweetsController < ApplicationController

  def index
    # allを使ってTweetの全レコードの取得
    # ページングするためのメソッドを使う
    @tweets = Tweet.order(created_at: :desc)
              .page(params[:page]).per(7)
              
    # form_forに渡すインスタンスを生成
    @tweet = Tweet.new
  end

  def create
    # ストロングパラメーターを元にインスタンスを生成
    @tweet = Tweet.new(tweet_params)
    # 投稿したuser_idをtweetのuser_idカラムにセット
    @tweet.user_id = current_user.id

    # データベースへ保存する  →  参照：week2「データの保存、抽出」
    @tweet.save
    # ツイート一覧へリダイレクト　→　参照：week2「簡易掲示板を作ろう３」
    redirect_to tweets_path
  end


  def destroy
    # レコードを１件取得　→ 参照：week2「データの保存、抽出」
    @tweet = Tweet.find(params[:id])  
    # 取得したレコードの削除　→  参照：week2「データの保存、抽出」
    @tweet.destroy
    # ツイート一覧へリダイレクト　→　参照：week2「簡易掲示板を作ろう３」
    redirect_to tweets_url, notice: 'Tweet was successfully destroyed.'
  end

  # ここからprivateメソッド
  private
    def tweet_params
      params.require(:tweet).permit(:content)
    end
end








