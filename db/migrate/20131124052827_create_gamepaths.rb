class CreateGamepaths < ActiveRecord::Migration
  def change
    create_table :gamepaths do |t|
      t.string :points
      t.boolean :unlock_song
      t.references :song_exercise, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
