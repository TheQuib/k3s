# Database information

## Type
 - MySQL
 - Running MyWebSQL for web interface functionality
 - A docker compose file is included, and will get you up and running with a quick container running MySQL
   - This is not required, a native installation of MySQL will work as well
   - The only thing you would need to change is the environment variable `MYSQL_ROOT_PASSWORD`

## Database Info
 - Name: k3s
 - Collation: latin1_swedish_ci
   - Should be default for most MySQL Database installations
 - Users:
   - k3s
     - Given full access to k3s database
     - Make sure remote login is allowed for user