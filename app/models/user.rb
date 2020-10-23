class User < ApplicationRecord
  validates :name, presence: true,
                   length: { minimum: 3 },
                   uniqueness: true

  has_many :authored_articles, foreign_key: :author_id, class_name: :Article
  has_many :votes
end