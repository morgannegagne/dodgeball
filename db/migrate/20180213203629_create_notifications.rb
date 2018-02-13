class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.integer :user_id
      t.integer :match_id
      t.boolean :unread, :default => true

      t.timestamps
    end
  end
end
