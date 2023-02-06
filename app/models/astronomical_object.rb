class AstronomicalObject < ApplicationRecord
  has_ancestry

  has_one :characteristic, class_name: 'AstronomicalObjectCharacteristic'
end
