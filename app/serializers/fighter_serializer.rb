class FighterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :alias, :nationality, :division, :stance, :height, :reach, :status, :champion, :win, :loss, :draw, :ko
  belongs_to :list
end
