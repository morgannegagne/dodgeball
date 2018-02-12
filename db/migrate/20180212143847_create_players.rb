class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :number
      t.string :height
      t.integer :wingspan
      t.string :position
      t.text :image_url

      t.timestamps
    end
  end
end
