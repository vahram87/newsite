class AddAttachmentVideoToBusinesses < ActiveRecord::Migration[5.0]
  def self.up
    change_table :businesses do |t|
      t.attachment :video
    end
  end

  def self.down
    remove_attachment :businesses, :video
  end
end
