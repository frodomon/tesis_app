class UsuarioXContrasenha < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :contrasenha
end
