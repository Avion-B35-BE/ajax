class Article < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  validates :body, presence: true, length: { minimum: 3 }
end
