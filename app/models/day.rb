class Day < ApplicationRecord
    belongs_to :user
    has_many :tasks
    has_many :selfcares
end
