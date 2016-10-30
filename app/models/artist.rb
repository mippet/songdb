class Artist < ApplicationRecord
  has_many :songs

 validates :name, presence: true
 validates :image, presence: true


  def self.order_by_name
  order(:name)
  end

end
