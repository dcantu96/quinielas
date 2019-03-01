class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.references :owner, index: true, foreign_key: "user_id", class_name: "Group"

      t.timestamps
    end
  end
end
