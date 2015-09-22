class Anotacion < ActiveRecord::Base
  belongs_to :emergencia
  belongs_to :user
end
