class Favorite < ActiveRecord::Base
	belongs_to :user
	belongs_to :tweet
end

#バリデーションなしで書いてもらう