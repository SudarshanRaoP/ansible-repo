## Ansible module for deploying Apache Kafka

Edit `hosts` file:
Sample `hosts` file:
```
[all]
zk1.example.com
zk2.exmple.com
zk3.example.com
kafka1.example.com
kafka2.example.com
kafka3.example.com

[zookeeper]
zk1.example.com   zk_myid=1
zk2.example.com   zk_myid=2
zk3.example.com   zk_myid=3

[kafka]
kafka1.example.com  broker_id=1
kafka2.example.com  broker_id=2
kafka3.example.com  broker_id=3
```
`zk_myid` is zookeeper `myid` used for initializing zookeeper.
`broker_id` is kafka broker_id for each broker.

Edit `group_vars/zookeeper and group_vars/kafka` for customization.

#### Note: If you want to use diffent version of Apache zookeeper or Apache Kafka. Put tar.gz in `files`.
#### File name must be in the following format: 

Apache Zookeeper: zookeeper-[version].tar.gz

Apache Kafka: kafka_[scala_version]-[version].tar.gz

`If replaced change the versions in group_vars/[files] also.`
