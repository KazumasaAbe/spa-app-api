class CreateLocalCurrencies < ActiveRecord::Migration[6.0]
  def change
    create_table :local_currencies do |t|
      t.integer :quantity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
