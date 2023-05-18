class AstronomicalObject < ApplicationRecord
  has_ancestry

  belongs_to :characteristic, class_name: 'AstronomicalObjectCharacteristic', foreign_key: 'characteristic'

  has_many :historic_events

  def to_param
    self.slug
  end
end
