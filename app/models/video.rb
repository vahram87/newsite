class Video < ApplicationRecord
	has_attached_file :clip
	validates_attachment_content_type :clip , content_type: /\Avideo\/.*\z/

	extend FriendlyId
  friendly_id :title, use: :slugged
end
