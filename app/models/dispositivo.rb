class Dispositivo < ActiveRecord::Base
  belongs_to :usuario
  has_one :ios
end
