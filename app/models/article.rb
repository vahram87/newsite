class Article < ApplicationRecord
	  has_attached_file :photo
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

   extend FriendlyId
  friendly_id :title, use: :slugged
end
