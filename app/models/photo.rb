class Photo < ApplicationRecord
  belongs_to :social_media_post

  validates :social_media_post, presence: true
end
