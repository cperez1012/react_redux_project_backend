class User < ApplicationRecord
    
    has_secure_password
    has_many :lists, dependent: :destroy
    has_many :fighters

    validates :email, uniqueness: { case_sensitive: false }

end
