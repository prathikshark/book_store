class Book < ApplicationRecord
  belongs_to :bookstore
  has_one :user ,through: :userbook
  has_one :userbook
end
