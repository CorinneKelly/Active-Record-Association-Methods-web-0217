class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
  	self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
  	# artists = Artists.all

  	drake = Artist.new(name: "Drake")
 
  	self.artist = drake
  	# pretty sure this is wrong cus it creates a new drake everytime its called
  end
end