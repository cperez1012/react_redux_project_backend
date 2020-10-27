class List < ApplicationRecord
    has_many :lists_fighters
    has_many :fighters, through: :lists_fighters
    belongs_to :user
  end