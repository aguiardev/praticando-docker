namespace Repository.Repositories.Base;

public interface ISqlServerDbBaseRepository<T>
{
    Task<IEnumerable<T>> GetAll();
    Task<IEnumerable<T>> GetByFilter(string sqlFilter, object param);
}