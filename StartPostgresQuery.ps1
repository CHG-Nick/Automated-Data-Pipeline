$MyServer = "127.0.0.1"
$MyPort = "5432"
$MyDB = "CastleAnalytics"
$MyUid= "postgres"
$MyPass= "ql1ktheDB&cH3er^"
$insertDml3 = "SELECT from public.load_format_is_nickscript1() ;";
$insertDml4 = "SELECT from public.load_format_is_nickscript2() ;";
$insertDml5 = "SELECT from public.load_format_is_nickscript3() ;";
$insertDml6 = "SELECT from public.load_format_is_nickscript4() ;";
$insertDml7 = "SELECT from public.load_format_is_nickscript5() ;";
$insertDml8 = "SELECT from public.load_format_is_nickscript6() ;";

$DBConnectionString = "Driver={PostgreSQL UNICODE(x64)};Server=$MyServer;Port=$MyPort;Database=$MyDB;Uid=$MyUid;Pwd=$MyPass;"
$DBConn = New-Object System.Data.Odbc.OdbcConnection;
$DBConn.ConnectionString = $DBConnectionString;
$DBConn.Open();
$DBCmd = $DBConn.CreateCommand();
$DBCmd.CommandText = "$insertDml3";
$DBCmd.ExecuteReader();
$DBCmd = $DBConn.CreateCommand();
$DBCmd.CommandText = "$insertDml4";
$DBCmd.ExecuteReader();
$DBCmd = $DBConn.CreateCommand();
$DBCmd.CommandText = "$insertDml5";
$DBCmd.ExecuteReader();
$DBCmd = $DBConn.CreateCommand();
$DBCmd.CommandText = "$insertDml6";
$DBCmd.ExecuteReader();
$DBCmd = $DBConn.CreateCommand();
$DBCmd.CommandText = "$insertDml7";
$DBCmd.ExecuteReader();
$DBCmd = $DBConn.CreateCommand();
$DBCmd.CommandText = "$insertDml8";
$DBCmd.ExecuteReader();
$DBConn.Close();
#$DBConn.Close();
#$DBConn.Open();

