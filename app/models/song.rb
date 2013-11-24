class Song < ActiveRecord::Base
  belongs_to :author
  has_many :song_exercise
  has_many :exercise, through: :song_exercise
end
