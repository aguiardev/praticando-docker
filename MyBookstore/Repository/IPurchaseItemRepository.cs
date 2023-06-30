using Repository.Entities;

namespace Repository;
public interface IPurchaseItemRepository
{
    Task<IEnumerable<PurchaseItem>> GetAll();
    Task<IEnumerable<PurchaseItem>> GetByFilter(string sqlFilter, object param);
}