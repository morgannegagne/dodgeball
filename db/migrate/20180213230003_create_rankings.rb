class CreateRankings < ActiveRecord::Migration[5.1]
  def change
    create_table :rankings do |t|
      t.string :name
      t.integer :level
      t.timestamps
    end
  end
end
