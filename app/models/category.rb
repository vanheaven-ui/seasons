class Category < ApplicationRecord
<<<<<<< HEAD
  has_many :article_categories, dependent: :destroy
  has_many :articles, through: :article_categories, foreign_key: :article_id, source: :article
=======
  has_many :article_categories
  has_many :articles, through: :article_categories, dependent: :destroy

  validates :name, :priority, presence: true
  validates :priority, uniqueness: true
  validates :name, length: { minimum: 3 }
>>>>>>> feature/mvp-v1
end
