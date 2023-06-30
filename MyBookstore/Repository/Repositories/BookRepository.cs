using Repository.Connections;
using Repository.Entities;
using Repository.Repositories.Base;

namespace Repository.Repositories;
public class BookRepository : SqlServerDbBaseRepository<Book>, IBookRepository
{
    public BookRepository(ISqlConnection sqlConnection) : base(sqlConnection)
    {
        
    }
}