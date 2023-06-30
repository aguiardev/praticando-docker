using Api.Purchase.Extensions;
using Repository;

var app = WebApplication.CreateBuilder(args).ConfigureServices().ConfigureApp();

app.MapGet("/api/purchases", async (IPurchaseRepository purchaseRepository) =>
{
    var purchases = await purchaseRepository.GetAll();

    return Results.Ok(purchases);
})
.WithName("ListAllPurchases");

app.MapGet("/api/books", async (IBookRepository bookRepository) =>
{
    var books = await bookRepository.GetAll();

    return Results.Ok(books);
})
.WithName("ListAllBooks");

app.MapGet("/api/books/id", async (int[] id, IBookRepository bookRepository) =>
{
    var books = await bookRepository.GetByFilter(
        "WHERE BookId IN @BookId",
        new { BookId = id });

    return Results.Ok(books);
})
.WithName("ListBooksById");

app.MapGet("/api/purchases/{id}/items", async (int id, IPurchaseItemRepository purchaseItemRepository) =>
{
    var purchaseItems = await purchaseItemRepository.GetByFilter(
        "WHERE PurchaseId = @PurchaseId",
        new { PurchaseId = id });

    return Results.Ok(purchaseItems);
})
.WithName("ListItemsById");

app.Run();