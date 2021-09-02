class AddHostNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :host_name, :string
  end
end
