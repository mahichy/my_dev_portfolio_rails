<<<<<<< HEAD
class CreateContacts < ActiveRecord::Migration[4.2]
=======
class CreateContacts < ActiveRecord::Migration[5.1]
>>>>>>> fix_upgraded_to_rails_5
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :comments

      t.timestamps null: false
    end
  end
end
