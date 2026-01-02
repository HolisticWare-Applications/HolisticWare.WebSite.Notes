# `.editorconfig`

editorconfig.md

https://github.com/editorconfig/editorconfig-core-net#readme

https://github.com/editorconfig/editorconfig-core-net

https://learn.microsoft.com/en-us/community/content/how-to-enforce-dotnet-format-using-editorconfig-github-actions

https://dev.to/srmagura/c-linting-and-formatting-tools-in-2021-bna

https://editorconfig.org/#file-format-details

https://github.com/editorconfig/

https://github.com/editorconfig/specification

https://spec.editorconfig.org/

https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/code-style-rule-options

```ini
# EditorConfig is awesome: https://editorconfig.org

# top-most EditorConfig file
root = true

# Unix-style newlines with a newline ending every file
[*]
charset = utf-8
end_of_line = lf
insert_final_newline = true
trim_trailing_whitespace = true

# Matches multiple files with brace expansion notation
# Set default charset
[*.{cs,md}]
indent_style = space
indent_size = 4

# 4 space indentation
[*.py]
indent_style = space
indent_size = 4

# Tab indentation (no size specified)
[Makefile]
indent_style = tab

# Matches the exact files either package.json or .travis.yml
[{package.json,.travis.yml}]
indent_style = space
indent_size = 2

# editorconfig here: https://docs.microsoft.com/en-us/visualstudio/ide/editorconfig-code-style-settings-reference
[*.cs]

#Core editorconfig formatting - indentation

#use soft tabs (spaces) for indentation
indent_style = space

#Formatting - indentation options

#indent switch case contents.
csharp_indent_case_contents = true
#indent switch labels
csharp_indent_switch_labels = true

#Formatting - new line options

#require braces to be on a new line for types, object_collection, methods, control_blocks, and lambdas (also known as "Allman" style)
csharp_new_line_before_open_brace = types, object_collection, methods, control_blocks, lambdas

#Formatting - organize using options

#sort System.* using directives alphabetically, and place them before other usings
dotnet_sort_system_directives_first = true

...

#Style - qualification options

#prefer fields not to be prefaced with this. or Me. in Visual Basic
dotnet_style_qualification_for_field = false:suggestion
#prefer methods not to be prefaced with this. or Me. in Visual Basic
dotnet_style_qualification_for_method = false:suggestion
#prefer properties not to be prefaced with this. or Me. in Visual Basic
dotnet_style_qualification_for_property = false:suggestion





```

https://github.com/editorconfig/editorconfig-core-net#readme

https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-format

https://www.reddit.com/r/csharp/comments/1f7np3w/confused_about_the_relationship_between_dotnet/

https://dev.to/hphan9/prettier-your-c-code-with-dotnet-format-75

https://www.meziantou.net/enforce-dotnet-code-style-in-ci-with-dotnet-format.htm

https://andrewlock.net/generating-editorconfig-files-automatically-using-intellicode/

https://github.com/RehanSaeed/EditorConfig

https://www.meziantou.net/how-to-enforce-a-consistent-coding-style-in-your-projects.htm

https://www.reddit.com/r/dotnet/comments/1gu5evg/whats_in_your_editorconfig/



```
# Unix-style newlines with a newline ending every file
[*]
end_of_line = lf
insert_final_newline = true

# C# files
[*.cs]
indent_style = space
indent_size = 4
tab_width = 4

# XML files
[*.xml]
indent_style = space
indent_size = 2

# JSON files
[*.json]
indent_style = space
indent_size = 2

# YAML files
[*.yml]
indent_style = space
indent_size = 2

# Markdown files
[*.md]
indent_style = space
indent_size = 2
trim_trailing_whitespace = false
```

https://github.com/editorconfig-checker/editorconfig-checker