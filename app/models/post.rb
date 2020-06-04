class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_rich_text :body

  validates :title, length: { minimum: 4 }
  validates :body, length: { minimum: 30 }

  # re-size images
  def optimized_image(img, x, y)
    return img.variant(resize_to_fill: [x, y]).processed
  end
end