using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using MongoDB.Driver;
using Repository.Repositories;
using Service;
using Service.Interfaces;
using System.Text;

namespace Api.Auth.Extensions;

public static class ConfigurationServicesExtension
{
    public static WebApplication ConfigureServices(this WebApplicationBuilder builder)
    {
        // Add services to the container.
        // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
        builder.Services.AddEndpointsApiExplorer();
        builder.Services.AddSwaggerGen();

        builder.Services.AddSingleton<IMongoDatabase>(
            new MongoClient(builder.Configuration.GetConnectionString("UserAuth"))
                .GetDatabase(builder.Configuration["DatabaseUserAuth"]));
        
        builder.Services.AddScoped<IUserRepository, UserRepository>();
        builder.Services.AddScoped<ITokenService, TokenService>();
        builder.Services.AddScoped<ILoginService, LoginService>();
        
        builder.Services
            .AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
            .AddJwtBearer(options =>
            {
                var jwtSecretKey = builder.Configuration["JwtSettings:SecretKey"];

                options.TokenValidationParameters = new TokenValidationParameters
                {
                    ValidateIssuerSigningKey = true,
                    IssuerSigningKey = new SymmetricSecurityKey(Encoding.ASCII.GetBytes(jwtSecretKey)),
                    ValidateIssuer = false,
                    ValidateAudience = false
                };
            });

        return builder.Build();
    }
}
