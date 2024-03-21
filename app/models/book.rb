class Book < ApplicationRecord
  belongs_to :bookstore
  has_many :userbooks , dependent: :destroy
  has_many :users ,through: :userbooks
  has_one_attached :img
  self.per_page = 12
end
