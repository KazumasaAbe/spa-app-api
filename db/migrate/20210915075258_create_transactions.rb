class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.references :local_currency, null: false, index: true, foreign_key: true
      t.references :sale, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
