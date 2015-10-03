class User < ActiveRecord::Base
	validates :email, presence: true
	has_and_belongs_to_many :passwords, :join_table => "users_passwords", :class_name => "Password"
	has_one :ubigeo
end
