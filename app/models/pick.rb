class Pick < ApplicationRecord
  belongs_to :user
  belongs_to :group
  belongs_to :match
  belongs_to :picked_team, class_name: 'Team', foreign_key: 'picked_team_id'
end
