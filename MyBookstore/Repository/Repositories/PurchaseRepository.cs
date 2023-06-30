using Repository.Connections;
using Repository.Entities;
using Repository.Repositories.Base;

namespace Repository.Repositories;

public class PurchaseRepository : SqlServerDbBaseRepository<Purchase>, IPurchaseRepository
{
    public PurchaseRepository(ISqlConnection sqlConnection) : base(sqlConnection)
    {
        
    }
}