class RemoveTagsFromHostDetails < ActiveRecord::Migration[6.0]
  def change
    remove_column :host_details, :tags, :string
  end
end
