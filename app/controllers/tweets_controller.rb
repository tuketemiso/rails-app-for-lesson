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

    if @tweet.save
      #リダイレクト書いてもらう
      redirect_to tweets_url
    else
      # 失敗した時にrenderしてもらう
      @tweets = Tweet.all
      render :index
    end
  end


  def destroy
    @tweet = Tweet.find(params[:id])
    # destroy使ってレコードの削除
    @tweet.destroy
    # リダイレクトしてもらう
    redirect_to tweets_url, notice: 'Tweet was successfully destroyed.'
  end

  private
    def tweet_params
      params.require(:tweet).permit(:content)
    end
end








