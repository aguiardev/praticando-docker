using Api.Purchase.Extensions;
using Repository;
using Repository.Entities;
using Service.Interfaces;

var app = WebApplication.CreateBuilder(args).ConfigureServices().ConfigureApp();

// Criar endpoint com paginação
//app.MapGet("/api/purchases", async (IPurchaseRepository purchaseRepository) =>
//{
//    var purchases = await purchaseRepository.GetAll();

//    return Results.Ok(purchases);
//})
//.WithName("ListAllPurchases");

app.MapGet("/api/purchases/{id}", async (int id, IPurchaseService purchaseService) =>
{
    var purchases = await purchaseService.Get(id);

    return Results.Ok(purchases);
})
.WithName("GetPurchaseById");

app.MapGet("/api/purchases/{id}/items", async (int id, IPurchaseItemRepository purchaseItemRepository) =>
{
    var purchaseItems = await purchaseItemRepository.GetByFilter(
        "WHERE PurchaseId = @PurchaseId",
        new { PurchaseId = id });

    return Results.Ok(purchaseItems);
})
.WithName("ListItemsById");

app.MapGet("/api/books", async (int[] id, IBookRepository bookRepository) =>
{
    IEnumerable<Book> books;

    books = id.Length == 0
        ? await bookRepository.GetAll()
        : await bookRepository.GetByFilter(
            "WHERE BookId IN @BookId", new { BookId = id });

    return Results.Ok(books);
})
.WithName("ListAllBooks");

app.Run();