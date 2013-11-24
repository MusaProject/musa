class Admin::SongsController < Admin::AdminController
  before_action :set_song, only: [:edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new song_params

    if @song.save
      redirect_to admin_songs_path
    end
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to admin_songs_path
    end
  end

  def destroy
    @song.destroy
    redirect_to admin_songs_path
  end

  private

  def song_params
    params.require(:song).permit :name, :url, :en_lyric, :es_lyric, :level, :api, :subtitles
  end

  def set_song
    @song = Song.find(params[:id])
  end
end

