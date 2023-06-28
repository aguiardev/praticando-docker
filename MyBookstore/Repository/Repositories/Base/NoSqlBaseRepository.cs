using MongoDB.Driver;

namespace Repository.Repositories.Base;

public class NoSqlBaseRepository<T>
{
    protected readonly IMongoCollection<T> _collection;

    public NoSqlBaseRepository(IMongoDatabase mongoDatabase, string collectionName)
    {
        _collection = mongoDatabase.GetCollection<T>(collectionName);
    }
}