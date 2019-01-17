# Partial Views

partial-views.md

## Loading partial views

*   Option 1:

    ```
    @await Html.PartialAsync("~/Pages/Privacy/_CookieConsentPartial.cshtml")
    ```

*   Option 2:

    ```
    `partial` tag uses `Microsoft.AspNetCore.Mvc.TagHelpers` which is referenced from `_ViewImports.cshtml`.
    Copy `_ViewImports.cshtml` to `Areas/` folder
    <partial name="~/Pages/Privacy/_CookieConsentPartial.cshtml" />
    ```

Code snippet from Ph4ct3x:
    
```html
    <!--
    Loading partial views

    Option 1:

    @await Html.PartialAsync("~/Pages/Privacy/_CookieConsentPartial.cshtml")

    Option 2:

    `partial` tag uses `Microsoft.AspNetCore.Mvc.TagHelpers` which is referenced from `_ViewImports.cshtml`.
     Copy `_ViewImports.cshtml` to `Areas/` folder
    <partial name="~/Pages/Privacy/_CookieConsentPartial.cshtml" />
    -->
    <partial name="~/Pages/Privacy/_CookieConsentPartial.cshtml" />
```