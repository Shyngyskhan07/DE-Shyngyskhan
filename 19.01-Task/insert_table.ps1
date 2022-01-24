#Cloud Shell
$ConnectionString = "Data Source=de-team.database.windows.net;Initial Catalog=DE-Team-Shyngyskhan-Shaimerdin-DB;user=de-team-admin;password=DEpassword0"
$SqlConnection = new-object system.data.SqlClient.SQLConnection($ConnectionString)
$query = @"
        
        INSERT INTO Car VALUES('Crossover', 'Manual', 'White')
        INSERT INTO Seller VALUES(100000)
        INSERT INTO Buyer VALUES(100000)
"@
$Sqlcommand = new-object system.data.sqlclient.sqlcommand($query,$SqlConnection)
$SqlConnection.Open()
$Sqlcommand.ExecuteNonQuery()