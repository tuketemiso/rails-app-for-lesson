class TweetsController < ApplicationController

  def index
    # allを使ってTweetの全レコードの取得
    @tweets = Tweet.all
    # newを使ってform_forに渡すインスタンスを生成
    @tweet = Tweet.new
  end

  def create
    # パラメーターを元にインスタンスを生成
    @tweet = Tweet.new(tweet_params)
    # 投稿したユーザーに紐付ける
    @tweet.user_id = current_user.id

    if @tweet.save #「save」を使ってデータベースへ保存する  →  参照：week2「データの保存、抽出」
      #「redirect_to」を使ってツイート一覧へリダイレクトする　→　参照：week2「簡易掲示板を作ろう３」
      redirect_to tweets_path
    else
      # 失敗した時にrenderする
      @tweets = Tweet.all
      render :index
    end
  end


  def destroy
    @tweet = Tweet.find(params[:id])  # findで該当するレコードを１件とってくる　→ 参照：week2「データの保存、抽出」
    # destroy使ってレコードの削除　→  参照：week2「データの保存、抽出」
    @tweet.destroy
    # ツイート一覧へリダイレクト　→　参照：week2「簡易掲示板を作ろう３」
    redirect_to tweets_url, notice: 'Tweet was successfully destroyed.'
  end

  private
    def tweet_params
      params.require(:tweet).permit(:content)
    end
end








