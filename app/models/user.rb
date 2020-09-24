# require 'bcrypt'

class User < ApplicationRecord

    # include BCrypt
    
    has_secure_password
    has_many :lists, dependent: :destroy
    has_many :fighters, through: :lists

    validates :email, uniqueness: { case_sensitive: false }

    # def password(password)
    #     self.password_digest = BCrypt::Password.create(password)
    # end
    # def password
    #     @password ||= Password.new(password_hash)
    # end
    
    # def password=(new_password)
    #     @password = Password.create(new_password)
    #     self.password_hash = @password
    # end


end
