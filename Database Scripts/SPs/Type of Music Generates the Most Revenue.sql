-- Type of Music Generates the Most Revenue
DELIMITER //

CREATE PROCEDURE GetGenreRevenue()
BEGIN
    SELECT g.name AS genre, SUM(i.total) AS total_revenue
    FROM tbl_invoice_line il
    JOIN tbl_track t ON il.track_id = t.track_id
    JOIN tbl_genre g ON t.genre_id = g.genre_id
    JOIN tbl_invoice i ON il.invoice_id = i.invoice_id
    GROUP BY g.genre_id
    ORDER BY total_revenue DESC;
END //

DELIMITER ;

-- CALL GetGenreRevenue();
