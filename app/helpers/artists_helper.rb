module ArtistsHelper
  #Write a helper method #display_artist in the appropriate app/helpers file to be called on in our views. The method's return value should take into consideration whether an artist is already associated with a song:
  #If an artist is already associated with the song, return a link to the artist's show page
  #If an artist is not associated with the song (a.k.a. 'else'), return a link to the song's edit page, with a link text of "Add Artist"

  def display_artist(song)
    if song.artist.present?
      link_to song.artist_name, artist_path(song.artist_id)
    else
      link_to "Edit song to identify artist.", edit_song_path(song)
    end
  end
end
