class Tweet < ActiveRecord::Base
	# userと紐付ける
	belongs_to :user


# -------------------------------------------------------- 
#発展課題
	# has_many :favorites

	# def favorited_by?(user_id)
	# 	favorites.where(user_id: user_id).exists?
	# end
# -----------------------------------------------------------
end
