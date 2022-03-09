require 'active_support/core_ext/object/blank'

class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
  
  extend Enumerize
  enumerize :role, in: [:general, :admin]

  has_many :carts
  has_many :cart_books, through: :carts

  has_many :order_details
  has_many :order_books, through: :order_details
end
