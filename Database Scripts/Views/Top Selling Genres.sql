-- Shows the most purchased music genres.

CREATE VIEW vw_top_genres AS
SELECT 
    g.genre_id,
    g.name AS genre_name,
    COUNT(il.invoice_line_id) AS total_purchases,
    SUM(il.unit_price * il.quantity) AS total_revenue
FROM tbl_invoice_line il
JOIN tbl_track t ON il.track_id = t.track_id
JOIN tbl_genre g ON t.genre_id = g.genre_id
GROUP BY g.genre_id, genre_name
ORDER BY total_revenue DESC;
