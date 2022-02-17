class Book < ApplicationRecord
  has_many :books_categories, dependent: :destroy
  has_many :category, through: :books_categories
  has_many :categories, dependent: :destroy
  belongs_to :author
end
