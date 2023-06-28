using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using Repository.Entities;
using Service.Interfaces;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace Service;

public class TokenService : ITokenService
{
    private readonly int _hoursToExpire;
    private readonly SecurityKey _secretKey;
    private readonly JwtSecurityTokenHandler _tokenHandler;

    public TokenService(IConfiguration configuration)
    {
        _secretKey = new SymmetricSecurityKey(Encoding.ASCII.GetBytes(configuration["JwtSettings:SecretKey"]));
        _hoursToExpire = int.Parse(configuration["JwtSettings:Expires"]);
        _tokenHandler = new JwtSecurityTokenHandler();
    }

    public string Generate(User user)
    {
        var tokenDescriptor = new SecurityTokenDescriptor
        {
            Subject = new ClaimsIdentity(new Claim[]
            {
                new Claim(ClaimTypes.Name, user.Name),
                new Claim(nameof(user.Login), user.Login),
                //new Claim(ClaimTypes.Role, user.Role.ToString())
            }),
            Expires = DateTime.UtcNow.AddMinutes(_hoursToExpire),
            SigningCredentials = new SigningCredentials(_secretKey, SecurityAlgorithms.HmacSha256)
        };

        var token = _tokenHandler.CreateToken(tokenDescriptor);

        return _tokenHandler.WriteToken(token);
    }

    public bool Validate(string token, out IDictionary<string, string> claims, out string message)
    {
        claims = new Dictionary<string, string>();
        message = string.Empty;

        var tokenValidationParameters = new TokenValidationParameters
        {
            ValidateIssuerSigningKey = true,
            IssuerSigningKey = _secretKey,
            ValidateIssuer = false,
            ValidateAudience = false
        };

        try
        {
            // Decifrar o token JWT
            var principal = _tokenHandler.ValidateToken(token, tokenValidationParameters, out var validatedToken);

            // Acesso aos claims do token
            var jwtSecurityToken = validatedToken as JwtSecurityToken;
            var login = jwtSecurityToken?.Claims.FirstOrDefault(c => c.Type == nameof(User.Login))?.Value;

            claims.Add(ClaimTypes.Name, principal.Identity.Name);
            claims.Add(nameof(User.Login), login);

            return principal.Identity.IsAuthenticated;
        }
        catch (SecurityTokenExpiredException ex)
        {
            message = ex.Message;
            return false;
        }
        catch (Exception ex)
        {
            message = ex.Message;
            return false;
        }
    }
}
