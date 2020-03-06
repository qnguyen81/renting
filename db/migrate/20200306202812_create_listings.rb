class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :listing_id
      t.string :name
      t.references :host, null: false, foreign_key: true

      t.timestamps
    end
  end
end
