class CreatePicks < ActiveRecord::Migration[5.2]
  def change
    create_table :picks do |t|
      t.references :user, index: true
      t.references :group, index: true
      t.references :match, index: true
      t.references :picked_team, index: true

      t.timestamps
    end
    add_foreign_key :picks, :teams, column: :picked_team_id
  end
end
