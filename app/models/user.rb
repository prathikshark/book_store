class User < ApplicationRecord
    has_many :books, through: :userbook
    has_many :userbooks

end
