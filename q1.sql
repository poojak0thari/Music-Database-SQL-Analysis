select count(invoiceline.TrackId) as sold_track, track.GenreId, genre.Name as Genre
from music_playlist.invoiceline
join music_playlist.track 
on invoiceline.TrackId = track.TrackId
join music_playlist.genre
on track.GenreId= genre.GenreId
group by GenreId, Genre