class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :image_url, :bio
  has_many :lists
  has_many :fighters, through: :lists
end
