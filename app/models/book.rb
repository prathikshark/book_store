class Book < ApplicationRecord
  belongs_to :bookstore
  has_many :userbooks 
  has_many :users ,through: :userbooks

end
