<<<<<<< HEAD
class AddAttachmentImageToProjects < ActiveRecord::Migration[4.2]
=======
class AddAttachmentImageToProjects < ActiveRecord::Migration[5.1]
>>>>>>> fix_upgraded_to_rails_5
  def self.up
    change_table :projects do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :projects, :image
  end
end
