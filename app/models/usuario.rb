class Usuario < ActiveRecord::Base
	has_many :usuario_x_contrasenhas
	has_many :contrasenhas, :through => :usuario_x_contrasenhas
end
