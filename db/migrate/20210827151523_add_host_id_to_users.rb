class AddHostIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :host_id, :integer
  end
end
