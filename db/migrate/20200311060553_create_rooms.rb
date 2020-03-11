class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :room_type
      t.integer :minimum_night
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
