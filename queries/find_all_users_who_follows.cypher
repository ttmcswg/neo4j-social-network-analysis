MATCH (u:User)-[:FOLLOWS]->(target:User {username: '{your_string_variable}'})
RETURN u.username AS follower;