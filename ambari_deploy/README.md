## Ambari autodeployment playbook

#### Configure `hosts` file and place in `/etc/ansible/`
```yml
[all]
host1.example.com
host2.example.com
host3.example.com

[ambariserver]
host2.example.com

[mysqlserver]
host2.example.com

[cluster]
host1.example.com
host3.example.com

```


#### Configure `group_vars/main`

```yml
---
#Java variables
java_version: 1.7.0_45
java_dir: /usr/java
java_home: /usr/java/jdk1.7.0_45

#Mysql variables

mysql_rootpw:

#Ambari database variables
ambari_version: 2.0.0
ambari_host: host1.example.com
ambari_dbport: 3306
ambari_dbtype: mysql
ambari_jdbc: com.mysql.jdbc.Driver
ambari_jdbcdriver: /usr/share/java/mysql-connector-java.jar
ambari_dbname: ambari
ambari_dbuser: ambari
ambari_dbpasswd: ambari
ambari_dbhost: host1.example.com 
```
