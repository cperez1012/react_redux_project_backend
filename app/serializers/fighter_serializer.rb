class FighterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :alias, :nationality, :division, :stance, :height, :reach, :status, :champion, :win, :loss, :draw, :ko, :list_id, :list, :upvote
  belongs_to :list
end
