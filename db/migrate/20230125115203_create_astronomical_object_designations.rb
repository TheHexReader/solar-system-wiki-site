class CreateAstronomicalObjectDesignations < ActiveRecord::Migration[7.0]
  def change
    create_table :astronomical_object_designations do |t|
      t.string :designation
      t.text :description_en
      t.text :description_ru

      t.timestamps
    end
  end
end
