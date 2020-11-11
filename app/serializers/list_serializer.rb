class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :user_id
  belongs_to :user
  has_many :fighters
end
