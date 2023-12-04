select track.AlbumId as Album, count(invoiceline.TrackId) as count, artist.Name as Artist
from music_playlist.track 
join music_playlist.invoiceline
on track.TrackId= invoiceline.TrackId
join music_playlist.album
on track.AlbumId= album.AlbumId
join music_playlist.artist
on album.ArtistId= artist.ArtistId
group by Album , Artist
order by count desc;
