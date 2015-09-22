class Seguimiento < ActiveRecord::Base
  belongs_to :emergencia
  belongs_to :dispositivo
end
