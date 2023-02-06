class AstronomicalObjectCharacteristic < ApplicationRecord
  belongs_to :astronomical_object

  belongs_to :astronomical_object_designation, class_name: 'AstronomicalObjectDesignation', foreign_key: 'status'
end
