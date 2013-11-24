class AddSubtitltesToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :subtitles, :longtext
  end
end
