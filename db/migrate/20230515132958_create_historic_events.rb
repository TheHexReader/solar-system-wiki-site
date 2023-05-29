class CreateHistoricEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :historic_events do |t|
      t.string :name_en
      t.string :name_ru

      t.text :description_en
      t.text :description_ru

      t.integer :astronomical_object_id

      t.date :date_start, null: true
      t.date :date_end, null: true
      
      t.timestamps
    end
  end
end
