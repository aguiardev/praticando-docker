using Repository.Entities;

namespace Repository.Repositories;

public interface IUserRepository
{
    Task<User?> GetUserNameAndPasswordAsync(string name, string password);
    Task<IList<User?>> GetAllUsersAsync();
}