class Group < ApplicationRecord
    belongs_to :owner, foreign_key: "user_id", class_name: "User"
    has_and_belongs_to_many :users
end