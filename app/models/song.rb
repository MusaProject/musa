class Song < ActiveRecord::Base
  has_many :song_exercise
  has_many :exercise, through: :song_exercise

  def parse_lyric
    en_lyric.lines
  end

end
