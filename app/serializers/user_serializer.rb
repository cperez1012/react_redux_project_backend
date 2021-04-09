class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :imageurl, :bio
  has_many :lists, dependent: :destroy
  has_many :fighters, through: :lists
end

