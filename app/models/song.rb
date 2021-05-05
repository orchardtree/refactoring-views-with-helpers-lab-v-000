class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist.present? ? self.artist.name : nil
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end
end
