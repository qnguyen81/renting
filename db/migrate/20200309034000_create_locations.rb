class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.decimal :longtitude
      t.decimal :latitude
      t.string :area
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
