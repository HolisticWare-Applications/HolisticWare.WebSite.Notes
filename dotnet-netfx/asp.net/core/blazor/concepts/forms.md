# Forms

forms.md

*   https://learn.microsoft.com/en-us/aspnet/core/blazor/forms/

*   https://learn.microsoft.com/en-us/training/modules/blazor-improve-how-forms-work/

*   Forms & Validation in Blazor Web Apps [Pt 10] | Front-end Web Development with .NET for Beginners

    *   https://www.youtube.com/watch?v=s_XFsK9i4Bc&ab_channel=dotnet

No storage:

```razor
@page "/anthropometric/bmi/calculate"
```

With storage:

```razor
@page "/anthropometric/bmi/create"
@page "/anthropometric/bmi/delete"
@page "/anthropometric/bmi/edit"
@page "/anthropometric/bmi/find"
@page "/anthropometric/bmi/search"
```

```csharp
@* 
    https://learn.microsoft.com/en-us/aspnet/core/blazor/forms/

*@
@page "/starship-1"
@inject ILogger<Starship1> Logger

<EditForm Model="Model" OnSubmit="Submit" FormName="Starship1">
    <div>
        <label>
            Identifier:
            <InputText @bind-Value="Model!.Id" />
        </label>
    </div>
    <div>
        <button type="submit">Submit</button>
    </div>
</EditForm>

@code 
{
    [SupplyParameterFromForm]
    public Starship? Model { get; set; }

    protected override void OnInitialized() => Model ??= new();

    private void Submit()
    {
        Logger.LogInformation("Id = {Id}", Model?.Id);
    }

    public class Starship
    {
        public string? Id { get; set; }
    }
}
```


```csharp
@page "/starship-2"
@using System.ComponentModel.DataAnnotations
@inject ILogger<Starship2> Logger

<EditForm Model="Model" OnValidSubmit="Submit" FormName="Starship2">
    <DataAnnotationsValidator />
    <ValidationSummary />
    <label>
        Identifier: 
        <InputText @bind-Value="Model!.Id" />
    </label>
    <button type="submit">Submit</button>
</EditForm>

@code {
    [SupplyParameterFromForm]
    public Starship? Model { get; set; }

    protected override void OnInitialized() => Model ??= new();

    private void Submit()
    {
        Logger.LogInformation("Id = {Id}", Model?.Id);
    }

    public class Starship
    {
        [Required]
        [StringLength(10, ErrorMessage = "Id is too long.")]
        public string? Id { get; set; }
    }
}
```
