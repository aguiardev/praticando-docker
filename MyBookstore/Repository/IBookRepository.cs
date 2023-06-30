using Repository.Entities;

namespace Repository;
public interface IBookRepository
{
    Task<IEnumerable<Book>> GetAll();
    Task<IEnumerable<Book>> GetByFilter(string sqlFilter, object param);
}