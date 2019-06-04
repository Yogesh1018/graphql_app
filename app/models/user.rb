class User < ApplicationRecord

  has_many :books

  validates :name, :email, presence: true

  validates :email, uniqueness: true
  
end
