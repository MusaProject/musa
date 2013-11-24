class SongExercisesController < ApplicationController

  def show
    @exercise = SongExercise.find(params[:id])
  end
end
