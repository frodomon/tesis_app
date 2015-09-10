class Contrasenha < ActiveRecord::Base
	has_many :usuario_x_contrasenhas
	has_many :usuarios, :through => :usuario_x_contrasenhas
end
