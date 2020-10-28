class List < ApplicationRecord
    has_many :fighterlists
    has_many :fighters, through: :fighterlists
    belongs_to :user
end

