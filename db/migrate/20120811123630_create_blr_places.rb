class CreateBlrPlaces < ActiveRecord::Migration
  def change
    create_table :blr_places do |t|
      t.string :place_name
      t.string :tags

      t.timestamps
    end
  end
end
