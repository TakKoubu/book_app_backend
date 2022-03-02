class Book < ApplicationRecord
  has_one_attached :image
  has_many :book_categories, dependent: :destroy
  has_many :categories, through: :book_categories

  has_many :orders, dependent: :destroy
  has_many :users, through: :orders
end
