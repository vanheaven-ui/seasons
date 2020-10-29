class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes, dependent: :destroy
  has_many :article_categories, dependent: :destroy
  has_many :categories, through: :article_categories,  source: :category
  has_one_attached :image
end
