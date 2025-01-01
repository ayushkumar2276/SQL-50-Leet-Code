SELECT USER_ID, COUNT(DISTINCT(follower_id)) AS followers_count
FROM FOLLOWERS
GROUP BY user_id;
