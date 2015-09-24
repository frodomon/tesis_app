class User < ActiveRecord::Base
	has_many :user_x_passwords
	has_many :passwordss, :through => :user_x_passwords
end
