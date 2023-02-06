class CreateAstronomicalObjectCharacteristics < ActiveRecord::Migration[7.0]
  def change
    create_table :astronomical_object_characteristics do |t|
      t.decimal :diameter, precision: 9, scale: 2
      t.decimal :volume, precision: 21, scale: 0
      t.decimal :mass, precision: 31, scale: 0
      t.decimal :density, precision: 5, scale: 3
      t.decimal :gravity, precision: 8, scale: 5
      t.boolean :has_rings
      t.integer :status

      t.timestamps
    end
  end
end
