class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_rich_text :body

  validates :title, length: { minimum: 4 }, presence: true
  validates :body, length: { minimum: 30 }, presence: true
end