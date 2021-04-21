class FighterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :imageurl, :alias, :nationality, :division, :stance, :height, :reach, :status, :champion, :win, :loss, :draw, :ko, :ranking, :list_id, :list
  belongs_to :list
end
