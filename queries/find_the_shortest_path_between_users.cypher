MATCH (a:User {username: '{your_string_variable_1}'}), (e:User {username: '{your_string_variable_2}'}), p = shortestPath((a)-[*]-(e))
RETURN p;