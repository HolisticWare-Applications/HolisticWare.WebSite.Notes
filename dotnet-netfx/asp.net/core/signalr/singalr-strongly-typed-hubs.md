# Strongly-Typed Hubs

singalr-strongly-typed-hubs.md 

derive hub from Hub<T> (introduced in SignalR 2.1) rather than Hub

*   To define an interface for hub methods that client can reference 

*   enable Intellisense on hub methods 

```
public class StrongHub : Hub<IClient>
{
    public void Send(string message)
    {
        Clients.All.NewMessage(message);
    }
}

public interface IClient
{
    void NewMessage(string message);
}
```
