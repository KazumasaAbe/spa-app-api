class AddColumnAcceptable < ActiveRecord::Migration[6.0]
  def change
    add_column :host_details, :acceptable, :integer, default: 0
  end
end
