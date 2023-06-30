namespace Repository.Entities;

public class Purchase
{
    public int PurchaseId { get; set; }
    public int UserId { get; set; }
    public DateTime PurchaseDate { get; set; }

    //public double TotalPurchase => PurchaseItems
    //    .Sum(s => s.Books.Sum(p => p.Price));
    //public IList<PurchaseItems> Items { get; set; }
}