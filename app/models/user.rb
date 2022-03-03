require 'active_support/core_ext/object/blank'

class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
  
  extend Enumerize
  enumerize :role, in: [:general, :admin]

  has_many :orders
  has_many :books, through: :orders
end

