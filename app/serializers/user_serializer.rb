class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :image_url, :bio
  has_many :lists, serializer: ListSerializer
  has_many :fighters, through: :lists
end
