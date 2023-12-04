select track.GenreId, sum((invoiceline.Quantity)*invoiceline.UnitPrice) as total_sales, genre.Name as Genre
from music_playlist.invoiceline 
join music_playlist.track on track.TrackId = invoiceline.TrackId
join music_playlist.genre
on track.GenreId= genre.GenreId
group by GenreId, Genre
order by total_sales desc;