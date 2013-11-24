class Admin::SongExercisesController < Admin::AdminController

  def new
    @song = Song.find(params[:song_id])
    @exercise = @song.song_exercise.new
  end

  def create
    @exercise = SongExercise.new songexercise_params
    @exercise.tap do |exercise|
      exercise.song_id = params[:song_id]
      exercise.exercise_id = params[:exercise_id]
    end
    if @exercise.save
      redirect_to admin_songs_path
    end
  end

  private

  def songexercise_params
    params.require(:song_exercise).permit :song_id, :exercise_id, :points, :lyric
  end
end
