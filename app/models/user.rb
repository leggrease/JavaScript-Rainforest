class User < ActiveRecord::Base
	has_many :reviews
	has_many :products, through: :reviews

	validates :name, presence: true
	validates :email, uniqueness: { message: "already exists. Please try something else."}

	has_secure_password
end
