class Tweet < ActiveRecord::Base
	# userと紐付ける
	belongs_to :user


# -------------------------------------------------------- 優秀すぎる人用に残しておく
	has_many :favorites
	default_scope -> { order(created_at: :desc) }
	def favorited_by?(user)
		favorites.where(user_id: user.try(:id)).exists?
	end
# -----------------------------------------------------------
end
