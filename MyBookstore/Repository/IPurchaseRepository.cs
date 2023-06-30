using Repository.Entities;

namespace Repository;
public interface IPurchaseRepository
{
    Task<IEnumerable<Purchase>> GetAll();
    Task<IEnumerable<Purchase>> GetByFilter(string sqlFilter, object param);
}