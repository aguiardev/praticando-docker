using Repository;
using Repository.Connections;
using Repository.Repositories;
using Service;
using Service.Interfaces;

namespace Api.Purchase.Extensions;

public static class ConfigurationServicesExtension
{
    public static WebApplication ConfigureServices(this WebApplicationBuilder builder)
    {
        // Add services to the container.
        // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
        builder.Services.AddEndpointsApiExplorer();
        builder.Services.AddSwaggerGen();

        // Connections
        builder.Services.AddSingleton<ISqlConnection>(
            new SqlServerConnection(builder.Configuration.GetConnectionString("Purchases")));

        // Repositories
        builder.Services.AddScoped<IBookRepository, BookRepository>();
        builder.Services.AddScoped<IPurchaseRepository, PurchaseRepository>();
        builder.Services.AddScoped<IPurchaseItemRepository, PurchaseItemRepository>();

        // Services
        builder.Services.AddScoped<IPurchaseService, PurchaseService>();

        return builder.Build();
    }
}
