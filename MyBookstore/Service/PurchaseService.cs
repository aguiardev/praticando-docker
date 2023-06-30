using Repository;
using Repository.Entities;
using Service.Interfaces;
using Service.VisualObjects;

namespace Service;

public class PurchaseService : IPurchaseService
{
    private readonly IBookRepository _bookRepository;
    private readonly IPurchaseRepository _purchaseRepository;
    private readonly IPurchaseItemRepository _purchaseItemRepository;

    public PurchaseService(
        IBookRepository bookRepository,
        IPurchaseRepository purchaseRepository,
        IPurchaseItemRepository purchaseItemRepository)
    {
        _bookRepository = bookRepository;
        _purchaseRepository = purchaseRepository;
        _purchaseItemRepository = purchaseItemRepository;
    }

    public async Task<IEnumerable<PurchaseVO>> Get(int purchaseId)
    {
        var purchase = await _purchaseRepository.GetByFilter(
            "WHERE PurchaseId = @PurchaseId",
            new { PurchaseId = purchaseId });

        var items = await _purchaseItemRepository.GetByFilter(
            "WHERE PurchaseId = @PurchaseId",
            new { PurchaseId = purchaseId });

        var booksId = items.Select(s => s.BookId).Distinct();

        var books = await _bookRepository.GetByFilter(
            "WHERE BookId IN @BookId",
            new { BookId = booksId });

        return Parse(purchase, items, books);
    }

    private IEnumerable<PurchaseVO> Parse(
        IEnumerable<Purchase> purchases,
        IEnumerable<PurchaseItem> purchaseItems,
        IEnumerable<Book> books)
    {
        var purchaseVO = new List<PurchaseVO>();

        foreach (var purchase in purchases)
        {
            purchaseVO.Add(purchase);

            foreach (var purchaseItem in purchaseItems)
            {
                var currentPurchase = purchaseVO.Last();

                currentPurchase.Items.Add(purchaseItem);

                foreach (var item in currentPurchase.Items)
                {
                    item.Book = books.First(f => f.BookId == purchaseItem.BookId);
                }
            }
        }

        return purchaseVO;
    }
}