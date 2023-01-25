class CreateAstronomicalObjectCharacteristics < ActiveRecord::Migration[7.0]
  def change
    create_table :astronomical_object_characteristics do |t|
      t.decimal :radius
      t.decimal :volume
      t.decimal :mass
      t.decimal :density
      t.decimal :gravity
      t.boolean :has_rings
      t.integer :status_id

      t.timestamps
    end
  end
end
