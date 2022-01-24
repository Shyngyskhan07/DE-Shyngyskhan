#Cloud Shell
$ConnectionString = "Data Source=de-team.database.windows.net;Initial Catalog=DE-Team-Shyngyskhan-Shaimerdin-DB;user=de-team-admin;password=DEpassword0"
$SqlConnection = new-object system.data.SqlClient.SQLConnection($ConnectionString)
$query = @"
        
        DROP TABLE IF EXISTS Car; 
        CREATE TABLE Car(
        CarID int IDENTITY PRIMARY KEY, 
        Body VARCHAR(50),
        Gearbox_type VARCHAR(20),
        Color VARCHAR(30) 
        );

        DROP TABLE IF EXISTS Seller; 
        CREATE TABLE Seller(
        SellerID int IDENTITY PRIMARY KEY,
        Car_price int
        );

        DROP TABLE IF EXISTS Buyer; 
        CREATE TABLE Buyer(
        BuyerID int IDENTITY PRIMARY KEY,
        Available_sum int 
        );
"@
$Sqlcommand = new-object system.data.sqlclient.sqlcommand($query,$SqlConnection)
$SqlConnection.Open()
$Sqlcommand.ExecuteNonQuery()