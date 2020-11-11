class List < ApplicationRecord
    belongs_to :user
    has_many :fighters, dependent: :destroy

    validates_presence_of :title, uniqueness: true

    accepts_nested_attributes_for :fighters

end

