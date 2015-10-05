class Password < ActiveRecord::Base
	has_and_belongs_to_many :users
	validates :password, presence: true
end
