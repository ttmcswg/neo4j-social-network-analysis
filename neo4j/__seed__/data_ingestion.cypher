CREATE (:User {username: 'alice', name: 'Alice', age: 30});
CREATE (:User {username: 'bob', name: 'Bob', age: 25});
CREATE (:User {username: 'carol', name: 'Carol', age: 27});
CREATE (:User {username: 'dave', name: 'Dave', age: 22});
CREATE (:User {username: 'eve', name: 'Eve', age: 35});

MATCH (a:User {username: 'alice'}), (b:User {username: 'bob'})
CREATE (a)-[:FOLLOWS]->(b);

MATCH (b:User {username: 'bob'}), (c:User {username: 'carol'})
CREATE (b)-[:FOLLOWS]->(c);

MATCH (c:User {username: 'carol'}), (d:User {username: 'dave'})
CREATE (c)-[:FOLLOWS]->(d);

MATCH (d:User {username: 'dave'}), (e:User {username: 'eve'})
CREATE (d)-[:FOLLOWS]->(e);

MATCH (a:User {username: 'alice'}), (c:User {username: 'carol'})
CREATE (a)-[:FOLLOWS]->(c);

MATCH (b:User {username: 'bob'}), (e:User {username: 'eve'})
CREATE (b)-[:FOLLOWS]->(e);

MATCH (c:User {username: 'carol'}), (a:User {username: 'alice'})
CREATE (c)-[:FOLLOWS]->(a);
