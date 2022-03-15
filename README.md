# Cheat Sheet - Mysql + Sql Queries

# Install MySql ⚙️

> Before running the install verify you do not already have it installed with `which mysql`

## If Already Installed

Verify your version of mysql with `mysql -V`.
Your output should look something like:

```
mysql  Ver 8.0.28 for macos12.2 on arm64 (Homebrew)
```

> We are looking for the version number 8^

If you have a version lower than 8 you will need to uninstall mysql and reinstall the latest version. Check out their [docs](https://dev.mysql.com/doc/refman/8.0/en/installing.html) for more information.

## If Not Installed

### Mac 🍎

Install through Brew:

```bash
brew install mysql
```

You can then verify the install with:

```bash
brew services list
```

Output should like as follows:

```bash
Name  Status  User File
mysql started Hart ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
```

If your status is set to `none` you will need to start the service before you will have access to the mysql shell.

You can start it with:

```bash
brew services start mysql
```

Your output for the command should be as so:

```
==> Successfully started `mysql` (label: homebrew.mxcl.mysql)
```

### Windows 🪟 (Linux Subsystem)

We will install with apt manager.

First step we always want to update the current available packages.

```bash
sudo apt update
```

Once that has completed we will install mysql

```bash
sudo apt install mysql-server
```

Confirm that you have the correct version:

```bash
mysql --version
```

> We are looking for the version number 8^

To start the service we will need to use:

```bash
sudo service mysql start
```

# Base Commands

## Commands ran in terminal

### To access mysql shell

```bash
mysql -u root
```

Output should be as so:

```
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.28 Homebrew

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
```

### To run sql files:

```bash
mysql -u root -p name_of_database -t < name_of_file.sql
```

## Commands ran in mysql interactive prompt

### To exit mysql:

```
\q
```

```
exit
```

### To create a database:

```
CREATE DATABASE name;
```

### To change database:

```
USE name;
```

### To drop a database:

```
DROP DATABASE name;
```

### To list tables in a database:

```
SHOW TABLES;
```

### To describe a table:

```
DESCRIBE table_name;
```

### To drop a table:

```
DROP TABLE name;
```

> For more examples of queries. Checkout the queries directory
