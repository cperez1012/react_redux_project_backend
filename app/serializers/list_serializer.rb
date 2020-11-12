class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :user_id, :fighters
  belongs_to :user
  has_many :fighters
end
