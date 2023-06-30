using Repository.Entities;

namespace Service.VisualObjects;

public class PurchaseItemVO
{
    public int PurchaseItemId { get; set; }
    public BookVO Book { get; set; }
    public int Quantity { get; set; }

    public static implicit operator PurchaseItemVO(PurchaseItem purchaseItem) => new()
    {
        PurchaseItemId = purchaseItem.PurchaseItemId,
        Quantity = purchaseItem.Quantity
    };
}
