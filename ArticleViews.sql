/*Table: Views

Find all authors who viewed at least one of their own articles.

Return the result sorted by id.*/
-- Author viewed his/her own article
SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;
