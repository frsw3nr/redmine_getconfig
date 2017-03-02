Gradle server acceptance plugin for Redmine
===========================================

Requirements
------------

Build
-----

```
cd redmine/plugins
git clone https://github.com/frsw3nr/redmine_getconfig.git
```

```
bundle exec bin/rake redmine:plugins:migrate RAILS_ENV=development
```

```
mysql -u root -p redmine
```

```
alter table sites default character set utf8mb4;
alter table device_results default character set utf8mb4;
alter table test_results default character set utf8mb4;
alter table metrics default character set utf8mb4;
alter table nodes default character set utf8mb4;
alter table tenants default character set utf8mb4;
alter table domains default character set utf8mb4;
alter table site_nodes default character set utf8mb4;
```

Usage
-----

```
http://{redmine_server}:3000/inventory/{test_node}
```

Reference
---------

* [Gradle server acceptance](https://github.com/frsw3nr/gradle-server-acceptance)
* [Plugin Tutorial](http://www.redmine.org/projects/redmine/wiki/Plugin_Tutorial)

AUTHOR
-----------

Minoru Furusawa <minoru.furusawa@toshiba.co.jp>

COPYRIGHT
-----------

Copyright 2014-2017, Minoru Furusawa, Toshiba corporation.
