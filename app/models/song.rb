class Song < ActiveRecord::Base

  def parse_lyric
    en_lyric.lines
  end


end
