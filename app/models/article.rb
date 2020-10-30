class Article < ApplicationRecord
<<<<<<< HEAD
  belongs_to :author, class_name: 'User'
  has_many :votes
  has_many :article_categories, dependent: :destroy
  has_many :categories, through: :article_categories, foreign_key: :category_id, source: :category
=======
  attr_accessor :category_id
  
  belongs_to :author, class_name: 'User'
  has_many :votes, dependent: :destroy
  has_many :article_categories
  has_many :categories, through: :article_categories, dependent: :destroy
  has_one_attached :image

  validates :title, :text, :image, presence: true
  validates :title, :text, length: { minimum: 3 }
>>>>>>> feature/mvp-v1
end
