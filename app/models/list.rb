class List < ApplicationRecord
    has_many :fighters
    belongs_to :user
end
