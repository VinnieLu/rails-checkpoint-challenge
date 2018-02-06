class User < ApplicationRecord

	has_many :attendances
	has_many :concerts, through: :attendances

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	validates :password, presence: true

	include BCrypt

	def password
	@password ||= Password.new(password_hash)
	end

	def password=(new_password)
	@password = Password.create(new_password)
	self.password_hash = @password
	end

end