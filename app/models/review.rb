class Review < ActiveRecord::Base
	validates :comment, :presence => true
	scope :newest_first, -> {order("created_at DESC")}
	
	belongs_to :user
	belongs_to :product
end