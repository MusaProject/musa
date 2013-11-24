class Admin::SubtitlesController < Admin::AdminController
  def new
    @song = Song.find params[:song_id]
  end

  def create
  end
end
