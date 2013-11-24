class GamepathsController < ApplicationController
  before_action :set_gamepath, only: [:edit, :update]

  def index
    @gamepaths = Gamepath.all
  end

  def new
    @gamepath = Gamepath.new
  end

  def create
    @gamepath = Gamepath.new gamepath_params
    if @gamepath.save
      redirect_to gamepath_path
    end
  end

  def edit
  end

  def update
    if @gamepath.update gamepath_params
      redirect_to gamepath_path
    end
  end

  private

  def set_gamepath
    @gamepath = Gamepath.find params[:id]
  end

  def gamepath_params
    params.require(:gamepath).permit :song_exercise_id, :points, :unlock_song, :user_id
  end
end
