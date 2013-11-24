class Song < ActiveRecord::Base
  belongs_to :author
  has_many :song_exercise
  has_many :exercise, through: :song_exercise

  def parse_lyric
    en_lyric.lines
  end

  def show_video?
    song_exercise.map { |exercise| exercise.gamepaths.map(&:unlock_song).any? }.pop
  end
end
