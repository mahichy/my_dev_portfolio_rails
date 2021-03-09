class AddAttributesToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :technology, :text
    add_column :projects, :app_how, :text
  end
end
