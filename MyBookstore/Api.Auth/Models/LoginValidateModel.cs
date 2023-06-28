namespace Api.Auth.Models;

public class LoginValidateModel
{
    public LoginValidateModel(string? message)
    {
        Message = message;
    }

    public LoginValidateModel(string? login, string? name, string? message)
    {
        Login = login;
        Name = name;
        Message = message;
    }

    public string? Login { get; set; }
    public string? Name { get; set; }
    public string? Message { get; set; }
}