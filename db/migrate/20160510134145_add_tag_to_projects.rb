class AddTagToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :tag, :integer
  end
end
