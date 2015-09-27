class User < ActiveRecord::Base
	has_and_belongs_to_many :passwords
	has_one :ubigeo
	accepts_nested_attributes_for :passwords
end
