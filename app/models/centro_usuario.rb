class CentroUsuario < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :centro
end
