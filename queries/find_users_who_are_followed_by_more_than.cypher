MATCH (u:User)<-[:FOLLOWS]-(followers)
WITH u, COUNT(followers) AS followerCount
WHERE followerCount > {your_number_variable}
RETURN u.username AS popularUser, followerCount;