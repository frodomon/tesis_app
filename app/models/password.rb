class Password < ActiveRecord::Base
	has_many :user_x_passwords
	has_many :users, :through => :user_x_passwords
end
