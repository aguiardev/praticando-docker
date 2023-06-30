using Repository.Entities;

namespace Service.VisualObjects;

public class BookVO
{
    public int BookId { get; set; }
    public string Title { get; set; }
    public string Author { get; set; }
    public double Price { get; set; }

    public static implicit operator BookVO(Book book) => new()
    {
        BookId = book.BookId,
        Title = book.Title,
        Author = book.Author,
        Price = book.Price
    };
}