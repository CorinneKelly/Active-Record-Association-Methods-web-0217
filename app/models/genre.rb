class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.all.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.all.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    array = self.artists
    name_array = []
    array.each do |artist|
      name_array << artist.name
    end

    name_array
  end
end
