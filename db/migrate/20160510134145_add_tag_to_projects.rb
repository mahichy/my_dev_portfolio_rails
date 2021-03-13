
class AddTagToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :tag, :integer
  end
end
