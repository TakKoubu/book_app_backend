require 'active_support/core_ext/object/blank'

class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
  
  extend Enumerize
  enumerize :roll, in: [:general => 0, :admin => 1]
end

