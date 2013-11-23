class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :url
      t.string :en_lyric
      t.string :es_lyric
      t.string :level
      t.string :ipa

      t.timestamps
    end
  end
end
