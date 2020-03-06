class CreateHosts < ActiveRecord::Migration[6.0]
  def change
    create_table :hosts do |t|
      t.integer :host_id
      t.string :name
      t.integer :number_of_listings

      t.timestamps
    end
  end
end
