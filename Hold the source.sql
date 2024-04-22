select f.Title, s.Source
from Film as f
JOIN Source AS s ON f.SourceID = s.SourceID
where s.Source = 'NA'
