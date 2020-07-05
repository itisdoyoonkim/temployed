class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :image
  has_rich_text :body

  validates :job_title, length: { minimum: 4 }, presence: true
  validates :body, length: { minimum: 11 }, presence: true

  HUMANIZED_ATTRIBUTES = {
    :body => "Job description"
  }

  def self.human_attribute_name(attr, options = {}) 
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end

  paginates_per 25
end