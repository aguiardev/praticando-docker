using Repository.Entities;

namespace Repository;
public interface IPurchaseRepository
{
    Task<IEnumerable<Purchase>> GetAll();
}