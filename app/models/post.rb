class Post < ApplicationRecord
  # def add_https_www_to_apply_link
  #   if !self.apply_link.include? "https://www."
  #     self.apply_link = "https://www.#{self.apply_link}"
  #   end
  # end

  belongs_to :user
  belongs_to :category
  has_one_attached :image
  has_rich_text :body

  validates :job_title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 30 }, presence: true

end