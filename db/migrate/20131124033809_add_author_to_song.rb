class AddAuthorToSong < ActiveRecord::Migration
  def change
    add_reference :songs, :author, index: true
  end
end
