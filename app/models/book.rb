class Book < ApplicationRecord
  has_one_attached :image
  has_many :book_categories, dependent: :destroy
  has_many :categories, through: :book_categories

  has_many :carts, dependent: :destroy
  has_many :order_details
  has_many :orders, through: :order_details
end
