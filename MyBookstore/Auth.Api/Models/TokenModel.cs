namespace Api.Auth.Models;

public class TokenModel
{
    public string? Token { get; set; }

    public TokenModel(string token) => Token = token;
}