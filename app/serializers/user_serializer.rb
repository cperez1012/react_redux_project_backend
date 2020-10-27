class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :image_url, :bio
  has_many :lists
  has_many :lists_fighters, through: :lists
end
