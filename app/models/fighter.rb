class Fighter < ApplicationRecord
    has_many :fighterlists
    has_many :lists, through: :fighterlists
end
