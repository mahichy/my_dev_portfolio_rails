<<<<<<< HEAD
class AddUrlToProjects < ActiveRecord::Migration[4.2]
=======
class AddUrlToProjects < ActiveRecord::Migration[5.1]
>>>>>>> fix_upgraded_to_rails_5
  def change
    add_column :projects, :url, :string
  end
end
