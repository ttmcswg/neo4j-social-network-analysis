MATCH (user:User {username: '{your_string_variable}'})-[:FOLLOWS]->(followed:User)-[:FOLLOWS]->(suggested:User)
WHERE NOT (user)-[:FOLLOWS]->(suggested) AND user <> suggested
RETURN DISTINCT suggested.username AS suggestedFriend;
