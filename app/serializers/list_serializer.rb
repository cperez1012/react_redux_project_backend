class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :user_id
  has_many fighterlists
  has_many :fighters, through: :fighterlists
  belongs_to :user
end
