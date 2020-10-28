class FighterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :alias, :nationality, :division, :stance, :height, :reach, :status, :champion, :win, :loss, :draw, :ko
  has_many :fighterlists
  has_many :lists, through: :fighterlists
end
