<<<<<<< HEAD
class CreateProjects < ActiveRecord::Migration[4.2]
=======
class CreateProjects < ActiveRecord::Migration[5.1]
>>>>>>> fix_upgraded_to_rails_5
  def change
    create_table :projects do |t|
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end
