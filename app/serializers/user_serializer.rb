class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :password_digest, :image_url, :bio
  has_many :lists
  has_many :fighters, through: :lists
end
