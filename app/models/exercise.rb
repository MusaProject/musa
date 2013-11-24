class Exercise < ActiveRecord::Base
  has_many :song_exercise
  has_many :song, through: :song_exercise

  def self.exercise_list
    Exercise.all.map do |exercise|
      [exercise.name, exercise.id]
    end
  end
end
