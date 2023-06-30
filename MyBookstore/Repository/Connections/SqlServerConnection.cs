using System.Data;
using System.Data.SqlClient;

namespace Repository.Connections;
public class SqlServerConnection : ISqlConnection
{
    private readonly string _connectionString;

    public IDbConnection GetConnection()
        => new SqlConnection(_connectionString);

    public SqlServerConnection(string connectionString)
        => _connectionString = connectionString;
}