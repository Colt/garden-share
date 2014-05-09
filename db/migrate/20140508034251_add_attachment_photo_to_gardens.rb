class AddAttachmentPhotoToGardens < ActiveRecord::Migration
  def self.up
    change_table :gardens do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :gardens, :photo
  end
end
