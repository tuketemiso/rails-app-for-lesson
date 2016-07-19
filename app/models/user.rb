class User < ActiveRecord::Base

#deviseが自動生成する設定

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

# ツイートと紐付ける
  has_many :tweets


# --------------------------------
    #発展課題
    # has_many :favorites
# --------------------------------
end

