namespace Repository.Entities;
public class PurchaseItem
{
    public int PurchaseItemId { get; set; }
    public int PurchaseId { get; set; }
    public int BookId { get; set; }
    public int Quantity { get; set; }
}