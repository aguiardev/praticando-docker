using Repository.Entities;

namespace Service.Interfaces;
public interface ITokenService
{
    string Generate(User user);
    bool Validate(string token, out IDictionary<string, string> claims, out string message);
}