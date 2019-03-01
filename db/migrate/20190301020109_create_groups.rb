class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.references :tournament, foreign_key: true
      t.references :owner, index: true

      t.timestamps
    end
    add_foreign_key :groups, :users, column: :owner_id
  end
end
