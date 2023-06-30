using Service.VisualObjects;

namespace Service.Interfaces;
public interface IPurchaseService
{
    Task<IEnumerable<PurchaseVO>> Get(int purchaseId);
}