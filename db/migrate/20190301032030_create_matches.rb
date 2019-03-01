class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.datetime :date, null: false
      t.references :tournament, foreign_key: true
      t.references :home_team, index: true
      t.references :visit_team, index: true
      t.references :winning_team, index: true

      t.timestamps
    end
    add_foreign_key :matches, :teams, column: :home_team_id
    add_foreign_key :matches, :teams, column: :visit_team_id
    add_foreign_key :matches, :teams, column: :winning_team_id
  end
end
