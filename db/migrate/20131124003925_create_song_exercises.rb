class CreateSongExercises < ActiveRecord::Migration
  def change
    create_table :song_exercises do |t|
      t.integer :song_id
      t.integer :exercise_id
      t.string :lyric
      t.integer :points

      t.timestamps
    end
  end
end
