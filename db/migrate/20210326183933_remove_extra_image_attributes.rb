class RemoveExtraImageAttributes < ActiveRecord::Migration[5.2]
  def change
  	remove_column :projects, :image_file_name
  	remove_column :projects, :image_content_type
  	remove_column :projects, :image_file_size
  	remove_column :projects, :image_updated_at
  end
end