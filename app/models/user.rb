class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { minimum: 6 }
    has_many :userbooks, dependent: :destroy
    has_many :books, through: :userbooks
   
    
      
       
end
