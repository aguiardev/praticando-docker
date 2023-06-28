namespace Api.Auth.Extensions;

public static class ConfigurationAppExtension
{
    public static WebApplication ConfigureApp(this WebApplication app)
    {
        app.UseAuthentication();

        // Configure the HTTP request pipeline.
        if (app.Environment.IsDevelopment())
        {
            app.UseSwagger();
            app.UseSwaggerUI();
        }

        app.UseHttpsRedirection();

        return app;
    }
}