# Ambari autodeployment playbook
### Tested with CentOS 7

#### Configure `hosts` file and place in `/etc/ansible/`
```yml
[all]
controller.cloudwick.com
master1.cloudwick.com
master2.cloudwick.com
master3.cloudwick.com
master4.cloudwick.com
gateway.cloudwick.com
host1.cloudwick.com
host2.cloudwick.com
host3.cloudwick.com
host4.cloudwick.com
host5.cloudwick.com

[controller]
controller.cloudwick.com

[gateway]
gateway.cloudwick.com

[host]
host1.cloudwick.com
host2.cloudwick.com
host3.cloudwick.com
host4.cloudwick.com
host5.cloudwick.com

[master]
master1.cloudwick.com
master2.cloudwick.com
master3.cloudwick.com
master4.cloudwick.com

```


#### Edit`group_vars/main` to customize deployment

```yml
---
#Java variables
java_version: 1.7.0_45
java_dir: /usr/java
java_home: /usr/java/jdk1.7.0_45

#Mysql variables
mysql_rootpw:

#Ambari database variables
ambari_version: 2.2.2
ambari_host: master4.cloudwick.com
ambari_dbport: 3306
ambari_dbtype: mysql
ambari_jdbc: com.mysql.jdbc.Driver
ambari_jdbcdriver: /usr/share/java/mysql-connector-java.jar
ambari_dbname: ambari
ambari_dbuser: ambari
ambari_dbpasswd: ambari
ambari_dbhost: gateway.cloudwick.com

```
