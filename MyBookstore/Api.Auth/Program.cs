using Api.Auth.Extensions;
using Api.Auth.Models;
using Microsoft.AspNetCore.Mvc;
using Repository;
using Repository.Entities;
using Service.Interfaces;
using System.Security.Claims;

var app = WebApplication.CreateBuilder(args).ConfigureServices().ConfigureApp();

app.MapPost("/api/login", async (UserModel model, ILoginService loginService) =>
{
    var token = await loginService
        .GetTokenByLoginAndPasswordAsync(model.Login, model.Password);

    if (token is null)
        return Results.NotFound(new { message = "Invalid username or password" });

    return Results.Ok(new TokenModel(token));
})
.WithName("PostLogin");

app.MapPost("/api/login/validate", (TokenModel model, ITokenService tokenService) =>
{
    if (!tokenService.Validate(model.Token, out var claim, out var message))
        return Results.BadRequest(new LoginValidateModel(message));

    return Results.Ok(new LoginValidateModel(claim["Login"], claim[ClaimTypes.Name], "Valid"));
})
.WithName("PostLoginValidate");

app.MapPost("/api/users", async (IUserRepository userRepository) =>
{
    var users = await userRepository.GetAllUsersAsync();

    if (users == null)
        return Results.NotFound();

    return Results.Ok(new
    {
        users = users
    });
})
.WithName("ListAllUsers");

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