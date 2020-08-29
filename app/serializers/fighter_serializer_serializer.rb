class FighterSerializerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :alias, :nationality, :division, :stance, :height, :reach, :status, :champion, :win, :loss, :draw, :ko, :list_id
  belongs_to :list
end
