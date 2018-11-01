class AddAttachmentClipToVideos < ActiveRecord::Migration[5.0]
  def self.up
    change_table :videos do |t|
      t.attachment :clip
    end
  end

  def self.down
    remove_attachment :videos, :clip
  end
end
