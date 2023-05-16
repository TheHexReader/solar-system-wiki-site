class CreateAstronomicalObjects < ActiveRecord::Migration[7.0]
  def change
    create_table :astronomical_objects do |t|
      t.string :slug
      t.string :name_en
      t.string :name_ru
      t.text :description_en
      t.text :description_ru
      t.integer :characteristic

      t.timestamps
    end
  end
end
