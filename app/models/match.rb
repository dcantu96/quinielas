class Match < ApplicationRecord
  belongs_to :tournament
  belongs_to :home_team, class_name: 'Team', foreign_key: 'home_team_id'
  belongs_to :visit_team, class_name: 'Team', foreign_key: 'visit_team_id'
  belongs_to :winning_team, class_name: 'Team', foreign_key: 'winning_team_id'
end