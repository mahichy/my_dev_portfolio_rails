<<<<<<< HEAD
class AddTagToProjects < ActiveRecord::Migration[4.2]
=======
class AddTagToProjects < ActiveRecord::Migration[5.1]
>>>>>>> fix_upgraded_to_rails_5
  def change
    add_column :projects, :tag, :integer
  end
end
