using Repository.Entities;

namespace Service.VisualObjects;

public class PurchaseVO
{
    public int PurchaseId { get; set; }
    public int UserId { get; set; }
    public DateTime PurchaseDate { get; set; }
    public double TotalPurchase => Items
        .Sum(s => s.Book.Price);

    public IList<PurchaseItemVO> Items { get; set; } = new List<PurchaseItemVO>();

    public static implicit operator PurchaseVO(Purchase purchase) => new()
    {
        PurchaseId = purchase.PurchaseId,
        UserId = purchase.UserId,
        PurchaseDate = purchase.PurchaseDate
    };
}