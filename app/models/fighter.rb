class Fighter < ApplicationRecord
    has_many :fighterlists
    has_many :lists, through: :fighterlists

    validates :name, uniqueness: { case_sensitive: false }
end
