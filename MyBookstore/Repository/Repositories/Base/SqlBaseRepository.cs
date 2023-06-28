using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository.Repositories.Base;

public class SqlBaseRepository<T>
{
    protected readonly SqlConnection _connection;

    public SqlBaseRepository(IConfiguration configuration)
    {
        _connection = new SqlConnection(configuration["DatabaseSettings:ConnectionString"]);
    }
}