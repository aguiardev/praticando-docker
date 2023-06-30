using Dapper;
using Repository.Connections;

namespace Repository.Repositories.Base;

public class SqlServerDbBaseRepository<T> : ISqlServerDbBaseRepository<T>
{
    protected readonly ISqlConnection _connection;

    public SqlServerDbBaseRepository(ISqlConnection sqlConnection)
        => _connection = sqlConnection;

    public async Task<IEnumerable<T>> GetAll()
    {
        using var connection = _connection.GetConnection();

        var query = $"SELECT * FROM {typeof(T).Name}";

        return await connection.QueryAsync<T>(query);
    }

    public async Task<IEnumerable<T>> GetByFilter(string sqlFilter, object param)
    {
        using var connection = _connection.GetConnection();

        var query = $"SELECT * FROM {typeof(T).Name} {sqlFilter}";

        return await connection.QueryAsync<T>(query, param);
    }
}