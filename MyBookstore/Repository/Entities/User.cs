using MongoDB.Bson.Serialization.Attributes;
using MongoDB.Bson;

namespace Repository.Entities;

public class User
{
    [BsonId]
    [BsonRepresentation(BsonType.ObjectId)]
    public string Id { get; set; }

    [BsonElement("userId")]
    public int UserId { get; set; }
    
    [BsonElement("name")]
    public string Name { get; set; }

    [BsonElement("login")]
    public string Login { get; set; }

    [BsonElement("dateOfBirth")]
    public DateTime DateOfBirth { get; set; }

    [BsonElement("address")]
    public Address Address { get; set; }

    [BsonElement("phone")]
    public string Phone { get; set; }

    [BsonElement("password")]
    public string Password { get; set; }

    [BsonElement("createdAt")]
    public DateTime CreatedAt { get; set; }
}