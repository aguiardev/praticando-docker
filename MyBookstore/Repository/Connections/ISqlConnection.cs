using System.Data;

namespace Repository.Connections;

public interface ISqlConnection
{
    IDbConnection GetConnection();
}