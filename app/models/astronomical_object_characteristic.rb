class AstronomicalObjectCharacteristic < ApplicationRecord
  has_one :astronomical_object, foreign_key: 'characteristic'

  belongs_to :astronomical_object_designation, class_name: 'AstronomicalObjectDesignation', foreign_key: 'status'
end
