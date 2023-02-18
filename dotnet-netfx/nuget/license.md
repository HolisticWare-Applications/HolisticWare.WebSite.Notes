# License

license.md

*   [nuget] use $(PackageLicenseExpression), not $(PackageLicenseUrl)

    *   https://github.com/mono/opentk/pull/35

*   mdoc: use //license/@expression, not //licenseUrl

    *   https://github.com/mono/api-doc-tools/pull/578


We found the following issue(s):

```
    The <licenseUrl> element is deprecated. Consider using the <license> element instead. Learn more.
    The <iconUrl> element is deprecated. Consider using the <icon> element instead. Learn more.
```

```
We recommend that you fix these issues and upload a new package. To learn more about authoring great packages, view our Best Practices page.
```