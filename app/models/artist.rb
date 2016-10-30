class Artist < ApplicationRecord
  has_many :songs

 validates :image, presence: true
 validates :name, presence: true

  def self.order_by_name
  order(:name)
  end

end
