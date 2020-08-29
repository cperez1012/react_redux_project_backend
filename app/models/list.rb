class List < ApplicationRecord
    has_many :fighters, dependent: :destroy
    # belongs_to :user
end
