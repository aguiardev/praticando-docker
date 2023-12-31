﻿using MongoDB.Bson.Serialization.Attributes;

namespace Repository.Entities;

public class Address
{
    [BsonElement("street")]
    public string Street { get; set; }

    [BsonElement("city")]
    public string City { get; set; }

    [BsonElement("state")]
    public string State { get; set; }

    [BsonElement("country")]
    public string Country { get; set; }
}
