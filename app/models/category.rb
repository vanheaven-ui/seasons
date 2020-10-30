class Category < ApplicationRecord
  has_many :article_categories, foreign_key: :category_id
  has_many :articles, through: :article_categories, dependent: :destroy

  validates :name, :priority, presence: true
  validates :priority, uniqueness: true
  validates :name, length: { minimum: 3 }
end
