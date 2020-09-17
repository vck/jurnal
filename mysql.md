# Reset password

1. `sudo mysql`

2. `use mysql`

3. `SELECT user,authentication_string,plugin,host FROM mysql.user;`

4. `ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';`

5. `FLUSH PRIVILEGES;`
