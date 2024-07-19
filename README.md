# Social Network Analysis with Neo4j

## Getting started

To spin up your docker instance:

```sh
# Use the existing Docker image on your system for your Neo4j instance
$ npm run dev

# OR #

# Force a clean build to ensure your Neo4j instance is using the latest code
$ npm run dev:clean
```

To stop instance:

```sh
npm run dev:stop
```

## Test Cypher queries
1. Run docker instance with one of the commands above.
2. Login to http://localhost:7474/ with login: ```neo4j``` and password: ```password```
3. Go to "queries" folder in this project, copy and paste them to neo4j console one by one (replace {your_string_variable} or {your_number_variable} etc. with your values).

## Queries
1. **Find all users who follow a specific user (e.g., who follows 'alice').**  
   [Query File](queries/find_all_users_who_follows.cypher)

2. **Find the shortest path between 'alice' and 'eve'.**  
   [Query File](queries/find_the_shortest_path_between_users.cypher)

3. **Find users who are followed by more than 2 users.**  
   [Query File](queries/find_users_who_are_followed_by_more_than.cypher)

4. **Suggest friends for 'alice' (users who are followed by the people that 'alice' follows but are not directly followed by 'alice').**  
   [Query File](queries/suggest_friends_for.cypher)
