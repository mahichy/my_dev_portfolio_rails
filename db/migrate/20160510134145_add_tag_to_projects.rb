class AddTagToProjects < ActiveRecord::Migration[4.2]
  def change
    add_column :projects, :tag, :integer
  end
end
