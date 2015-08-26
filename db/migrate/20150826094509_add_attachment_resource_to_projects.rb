class AddAttachmentResourceToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :resource
    end
  end

  def self.down
    remove_attachment :projects, :resource
  end
end
