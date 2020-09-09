class User < ApplicationRecord
    has_secure_password
    has_many :lists, dependent: :destroy
    has_many :fighters, through: :lists

    validates :email, uniqueness: { case_sensitive: false }

    def password(password)
        self.password_digest = BCrypt::Password.create(password)
    end


end
