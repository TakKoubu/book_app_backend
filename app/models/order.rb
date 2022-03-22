class Order < ApplicationRecord
  belongs_to :user
  
  has_many :order_details
  has_many :books, through: :order_details
end
