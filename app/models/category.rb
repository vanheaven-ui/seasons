class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: :article_categories, foreign_key: :article_id, source: :article
end
