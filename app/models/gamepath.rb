class Gamepath < ActiveRecord::Base
  belongs_to :song_exercise
  belongs_to :user
end
