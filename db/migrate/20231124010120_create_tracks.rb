class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :sport
      t.date :day
      t.integer :distance
      t.integer :moving_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
