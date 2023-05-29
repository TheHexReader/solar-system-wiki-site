class HistoricEvent < ApplicationRecord
  belongs_to :astronomical_object

  def self.ransackable_associations(auth_object = nil)
    ["astronomical_object"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["description_en", "description_ru", "name_en", "name_ru"]
  end
end
