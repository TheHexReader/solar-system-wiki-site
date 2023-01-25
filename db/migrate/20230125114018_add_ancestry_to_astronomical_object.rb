class AddAncestryToAstronomicalObject < ActiveRecord::Migration[7.0]
  def change
    add_column :astronomical_objects, :ancestry, :string
    add_index :astronomical_objects, :ancestry
  end
end
