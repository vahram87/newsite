class Business < ApplicationRecord
	has_attached_file :photo
  	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  	has_attached_file :video
	validates_attachment_content_type :video , content_type: /\Avideo\/.*\z/

	extend FriendlyId
     friendly_id :title, use: :slugged
end
