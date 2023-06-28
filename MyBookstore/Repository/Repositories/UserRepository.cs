using MongoDB.Driver;
using Repository.Entities;
using Repository.Repositories.Base;

namespace Repository.Repositories;

public class UserRepository : NoSqlBaseRepository<User>, IUserRepository
{
    private const string _collectionName = "users";

    public UserRepository(IMongoDatabase mongoDatabase) : base(mongoDatabase, _collectionName)
    {

    }

    public async Task<User?> GetUserNameAndPasswordAsync(string login, string password)
            => await _collection.Find(c => c.Login == login && c.Password == password).FirstOrDefaultAsync();

    public async Task<IList<User?>> GetAllUsersAsync()
            => await _collection.Find(c => true).ToListAsync();
}