class SongExercise < ActiveRecord::Base
  belongs_to :song
  belongs_to :exercise

  has_many :gamepaths

  delegate :exercise_list, to: :exercise

  def parse_lyric
    puts lyric
    lyric.lines
  end
end
