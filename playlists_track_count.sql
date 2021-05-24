SELECT 
    p.Name,
    COUNT(pt.PlaylistId) as NumberOfTracks
FROM Playlist p
LEFT JOIN PlaylistTrack pt ON
    pt.PlaylistId = p.PlaylistId
GROUP BY p.Name