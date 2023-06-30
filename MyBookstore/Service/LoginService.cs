using Repository;
using Service.Interfaces;

namespace Service;

public class LoginService : ILoginService
{
    private readonly IUserRepository _userRepository;
    private readonly ITokenService _tokenService;

    public LoginService(IUserRepository userRepository, ITokenService tokenService)
    {
        _userRepository = userRepository;
        _tokenService = tokenService;
    }

    public async Task<string?> GetTokenByLoginAndPasswordAsync(string login, string password)
    {
        var user = await _userRepository
            .GetUserNameAndPasswordAsync(login, password);

        if (user is null)
            return null;

        return _tokenService.Generate(user);
    }
}
