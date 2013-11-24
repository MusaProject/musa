class SongExercise < ActiveRecord::Base
  belongs_to :song
  belongs_to :exercise

  delegate :exercise_list, to: :exercise
end
