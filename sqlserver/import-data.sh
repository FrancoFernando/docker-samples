#wait for the SQL Server to come up
sleep 30

#run the setup script to create the DB and the schema in the DB
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P P@ssw0rd123! -d master -i setup.sql

#import the data from the csv file
/opt/mssql-tools/bin/bcp LabData.dbo.Users in "/usr/src/db/Users.csv" -c -t',' -S localhost -U sa -P P@ssw0rd123!

ping localhost
