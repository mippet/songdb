class Song < ApplicationRecord
  belongs_to :artist

    validates :name, presence: true
    validates :image_url, length: { maximum: 255 }, allow_blank: true
end
