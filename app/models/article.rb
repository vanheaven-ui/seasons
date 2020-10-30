class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes, dependent: :destroy
  has_many :article_categories, foreign_key: :article_id
  has_many :categories, through: :article_categories, dependent: :destroy
  has_one_attached :image

  validates :title, :text, :image, presence: true
  validates :title, :text, length: { minimum: 3 }
end
