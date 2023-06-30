using MongoDB.Driver;

namespace Repository.Repositories.Base;

public class NoSqlDbBaseRepository<T>
{
    protected readonly IMongoCollection<T> _collection;

    public NoSqlDbBaseRepository(IMongoDatabase mongoDatabase, string collectionName)
    {
        _collection = mongoDatabase.GetCollection<T>(collectionName);
    }
}