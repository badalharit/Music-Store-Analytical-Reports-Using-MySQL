-- Most Popular Music Format
DELIMITER //

CREATE PROCEDURE GetMediaSales(IN selected_media_type VARCHAR(255))
BEGIN
    -- Check if 'All' is selected, then ignore the media_type filter
    IF selected_media_type = 'All' THEN
        SELECT m.name AS media_type, COUNT(t.track_id) AS total_tracks_sold
        FROM tbl_invoice_line il
        JOIN tbl_track t ON il.track_id = t.track_id
        JOIN tbl_media_type m ON t.media_type_id = m.media_type_id
        GROUP BY m.media_type_id
        ORDER BY total_tracks_sold DESC;
    ELSE
        SELECT m.name AS media_type, COUNT(t.track_id) AS total_tracks_sold
        FROM tbl_invoice_line il
        JOIN tbl_track t ON il.track_id = t.track_id
        JOIN tbl_media_type m ON t.media_type_id = m.media_type_id
        WHERE m.name = selected_media_type
        GROUP BY m.media_type_id
        ORDER BY total_tracks_sold DESC;
    END IF;
END //

DELIMITER ;

-- To execute the stored procedure, use:

-- CALL GetMediaSales('MPEG audio file');  -- For a specific media type
-- CALL GetMediaSales('All');  -- To fetch data for all media types

