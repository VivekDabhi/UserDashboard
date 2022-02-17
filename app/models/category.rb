class Category < ApplicationRecord
  has_many :books_categories, dependent: :destroy
  belongs_to :book
end
