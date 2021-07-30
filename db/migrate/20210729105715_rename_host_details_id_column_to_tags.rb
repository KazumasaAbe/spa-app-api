class RenameHostDetailsIdColumnToTags < ActiveRecord::Migration[6.0]
  def change
    rename_column :tags, :host_details_id, :host_detail_id
  end
end
