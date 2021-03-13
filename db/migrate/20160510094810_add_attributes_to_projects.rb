<<<<<<< HEAD
class AddAttributesToProjects < ActiveRecord::Migration[4.2]
=======
class AddAttributesToProjects < ActiveRecord::Migration[5.1]
>>>>>>> fix_upgraded_to_rails_5
  def change
    add_column :projects, :technology, :text
    add_column :projects, :app_how, :text
  end
end
