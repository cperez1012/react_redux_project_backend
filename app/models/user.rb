class User < ApplicationRecord
    has_secure_password
    has_many :lists, dependent: :destroy
    has_many :fighters, through: :lists

    validates :email, uniqueness: true
    # validates_format_of  :email, :with => /^[\+A-Z0-9\._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i

end
