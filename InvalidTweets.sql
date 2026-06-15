/*Table: Tweets

A tweet is invalid if its content length is greater than 15 characters.

Return the IDs of invalid tweets.*/
-- Select tweet IDs
SELECT tweet_id
FROM Tweets

-- Content length greater than 15 is invalid
WHERE LENGTH(content) > 15;
