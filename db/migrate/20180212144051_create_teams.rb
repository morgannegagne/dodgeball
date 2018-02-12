class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :user_id
      t.integer :league_id
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
