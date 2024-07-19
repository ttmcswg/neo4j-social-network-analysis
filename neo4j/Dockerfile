FROM neo4j:4.4

RUN ln -fs /usr/share/zoneinfo/PST8PDT /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update; apt-get install curl -y

ENV NEO4J_AUTH=neo4j/password

ENV APOC_VERSION=4.2.0.2
ENV APOC_URI https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/${APOC_VERSION}/apoc-${APOC_VERSION}-all.jar
RUN sh -c 'cd /var/lib/neo4j/plugins && curl -L -O "${APOC_URI}"'

EXPOSE 7474 7687

COPY wrapper.sh wrapper.sh
RUN chmod +x wrapper.sh

COPY ./__seed__/*.cypher /var/lib/neo4j/import/

ENTRYPOINT ["./wrapper.sh"]