class Team < ApplicationRecord
    has_many :matches
    has_many :tournaments, through: :matches
end
