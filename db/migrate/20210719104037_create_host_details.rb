class CreateHostDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :host_details do |t|
      t.string :name
      t.datetime :acceptable_date
      t.integer :rate
      t.string :description
      t.string :link
      t.string :address
      t.decimal :latitude, null: false, precision: 10, scale: 6
      t.decimal :longitude, null: false, precision: 10, scale: 6
      t.string :tags
      t.timestamps
    end
  end
end
