namespace Service.Interfaces;

public interface ILoginService
{
    Task<string?> GetTokenByLoginAndPasswordAsync(string login, string password);
}