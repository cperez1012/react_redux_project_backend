class ListSerializerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :user_id
  has_many :fighters
  belongs_to :user
end
