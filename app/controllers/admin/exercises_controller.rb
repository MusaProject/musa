class Admin::ExercisesController < Admin::AdminController
  before_action :set_exercise, only: [:edit, :update, :destroy]

  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new exercise_params

    if @exercise.save
      redirect_to admin_exercises_path
    end
  end

  def edit
  end

  def update
    if @exercise.update(exercise_params)
      redirect_to admin_exercises_path
    end
  end

  def destroy
    @exercise.destroy
    redirect_to admin_exercises_path
  end

  private

  def exercise_params
    params.require(:exercise).permit :name
  end

  def set_exercise
    @exercise = Exercise.find(params[:id])
  end
end
