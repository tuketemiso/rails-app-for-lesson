class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def favorites
  	@user = User.find(params[:id])
  end

  def tweet_params
  	params.require(:tweet).permit(:body, :user_id)
  end

  def follows
    @user = User.find(params[:id])
  end

  def followers
    @user = User.find(params[:id])
  end
end
