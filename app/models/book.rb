class Book < ApplicationRecord
  belongs_to :bookstore
  has_many :user ,through: :userbook
  has_many :userbook
end
