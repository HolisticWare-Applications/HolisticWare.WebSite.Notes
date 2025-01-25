# Interpolated Strings

interpolated-strings.md

```csharp
int i = 1;
double j = 0.1;
string s = $"assa {i} {j}";
```

```csharp
CompilationUnit()
.WithMembers(
    List<MemberDeclarationSyntax>(
        new MemberDeclarationSyntax[]{
            GlobalStatement(
                LocalDeclarationStatement(
                    VariableDeclaration(
                        PredefinedType(
                            Token(SyntaxKind.IntKeyword)))
                    .WithVariables(
                        SingletonSeparatedList<VariableDeclaratorSyntax>(
                            VariableDeclarator(
                                Identifier("i"))
                            .WithInitializer(
                                EqualsValueClause(
                                    LiteralExpression(
                                        SyntaxKind.NumericLiteralExpression,
                                        Literal(1)))))))),
            GlobalStatement(
                LocalDeclarationStatement(
                    VariableDeclaration(
                        PredefinedType(
                            Token(SyntaxKind.DoubleKeyword)))
                    .WithVariables(
                        SingletonSeparatedList<VariableDeclaratorSyntax>(
                            VariableDeclarator(
                                Identifier("j"))
                            .WithInitializer(
                                EqualsValueClause(
                                    LiteralExpression(
                                        SyntaxKind.NumericLiteralExpression,
                                        Literal(0.1)))))))),
            GlobalStatement(
                LocalDeclarationStatement(
                    VariableDeclaration(
                        PredefinedType(
                            Token(SyntaxKind.StringKeyword)))
                    .WithVariables(
                        SingletonSeparatedList<VariableDeclaratorSyntax>(
                            VariableDeclarator(
                                Identifier("s"))
                            .WithInitializer(
                                EqualsValueClause(
                                    InterpolatedStringExpression(
                                        Token(SyntaxKind.InterpolatedStringStartToken))
                                    .WithContents(
                                        List<InterpolatedStringContentSyntax>(
                                            new InterpolatedStringContentSyntax[]{
                                                InterpolatedStringText()
                                                .WithTextToken(
                                                    Token(
                                                        TriviaList(),
                                                        SyntaxKind.InterpolatedStringTextToken,
                                                        "assa ",
                                                        "assa ",
                                                        TriviaList())),
                                                Interpolation(
                                                    IdentifierName("i")),
                                                InterpolatedStringText()
                                                .WithTextToken(
                                                    Token(
                                                        TriviaList(),
                                                        SyntaxKind.InterpolatedStringTextToken,
                                                        " ",
                                                        " ",
                                                        TriviaList())),
                                                Interpolation(
                                                    IdentifierName("j"))}))))))))}))
.NormalizeWhitespace()
```