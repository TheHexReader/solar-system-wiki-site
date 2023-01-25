class CreateAstronomicalObjects < ActiveRecord::Migration[7.0]
  def change
    create_table :astronomical_objects do |t|
      t.string :slug
      t.string :name
      t.integer :characteristics_id

      t.timestamps
    end
  end
end
