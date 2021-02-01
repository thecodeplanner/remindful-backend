class User < ApplicationRecord
    has_many :days
    has_secure_password
    has_many :tasks, through: :days
    has_many :selfcares, through: :days
end
