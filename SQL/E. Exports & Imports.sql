-- Please do not use Workbench for this, they are actually instant ;)

/* Export */
mysqldump -u your_username -p your_database_name > backup.sql 

/* Import */
mysql -u your_username -p your_database_name < backup.sql
