
class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :comments

      t.timestamps null: false
    end
  end
end
