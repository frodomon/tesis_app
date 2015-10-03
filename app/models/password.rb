class Password < ActiveRecord::Base
	has_and_belongs_to_many :users, :join_table => "users_passwords", :class_name => "User"
	validates :password, presence: true
end
