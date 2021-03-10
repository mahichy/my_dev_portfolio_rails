class AddAttributesToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :technology, :text
    add_column :projects, :app_how, :text
  end
end
