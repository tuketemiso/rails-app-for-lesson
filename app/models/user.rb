class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

# ツイートと紐付ける
    has_many :tweets


# --------------------------------
    has_many :favorites # 優秀すぎる人用に残しておく
# --------------------------------
end

