using Repository.Entities;

namespace Repository;

public interface IUserRepository
{
    Task<User?> GetUserNameAndPasswordAsync(string name, string password);
    Task<IList<User?>> GetAllUsersAsync();
}