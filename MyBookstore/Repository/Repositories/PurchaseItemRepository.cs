using Repository.Connections;
using Repository.Entities;
using Repository.Repositories.Base;

namespace Repository.Repositories;
public class PurchaseItemRepository : SqlServerDbBaseRepository<PurchaseItem>, IPurchaseItemRepository
{
    public PurchaseItemRepository(ISqlConnection sqlConnection) : base(sqlConnection)
    {
        
    }
}