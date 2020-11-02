class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user

  validates :comment, presence: true, 
                      length: { minimum: 3 }
end
