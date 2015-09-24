class UserXPassword < ActiveRecord::Base
	belongs_to :user
	belongs_to :password
end
