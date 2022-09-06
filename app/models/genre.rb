class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length
  end

  def artist_count
    self.songs.pluck(:artist_id).uniq.length
  end

  def all_artist_names
    self.artists.pluck(:name)
  end
end
