class Picture < ApplicationRecord
  validates :url, presence: true, length: { maximum: 255 }
  validates :caption, presence: true, length: { maximum: 255 }
  validates_inclusion_of :rating, in: 1..5
  validates_format_of :url,
                      with: /\.(gif|jpe?g|png)/i,
                      message: 'must have an image extension'

  has_many :reviews
end
