class AddAttachmentAvatarToChildren < ActiveRecord::Migration
  def self.up
    change_table :children do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :children, :avatar
  end
end
