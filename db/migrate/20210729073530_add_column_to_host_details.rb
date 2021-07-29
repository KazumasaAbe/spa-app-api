class AddColumnToHostDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :host_details, :marker_icon, :string
    add_column :host_details, :image, :string
    add_column :host_details, :maximum_acceptability, :integer
  end
end
