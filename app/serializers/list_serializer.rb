class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :user_id
  has_many :fighters, serializer: FighterSerializer
  belongs_to :user
end
