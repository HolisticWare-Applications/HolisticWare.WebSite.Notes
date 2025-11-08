# Custom Tasks

custom-tasks.md

*   using MSBuild Custom Tasks as ProjectReference

*   unit testing MSBuild Custom Tasks

I need for some MAUI performance improvement idea testing and Aspire Integration
Switching my Aspire Integration code to CliWrap, so much better than System.Diagnostic.Process

*   examples of testing tasks in dotnet/android:

    *   https://github.com/dotnet/android/blob/488f02f1ccc4d905c688448ba86be33f59e13832/src/Xamarin.Android.Build.Tasks/Tests/Xamarin.Android.Build.Tests/Tasks/ResolveSdksTaskTests.cs#L181-L192

    *   Basically any test that uses MockBuildEngine

    *   There isn't a way to setup an MSBuild task assembly with @(ProjectReference)

        need to use MockBuildEngine, but I was not sure if that is some external nuget or what.

        the code for it is just in our repo
        moljac-moki-mel — Today at 22:39
        And nugets? Our?
        No 3rd party?
        jonathanpeppers — Today at 22:40
        it just implements all the IBuildEngine interfaces from MSBuild:
        https://github.com/dotnet/android/blob/488f02f1ccc4d905c688448ba86be33f59e13832/src/Xamarin.Android.Build.Tasks/Tests/Xamarin.Android.Build.Tests/Utilities/MockBuildEngine.cs#L10
        there is nothing third party

    *   there might be something in here useful:

        *   https://github.com/rainersigwald/build-task-in-solution-demo

            this demo is more about solving file-locking on Windows, though

*   https://github.com/dellis1972/MSBuildSandbox

    *   GitHub - dellis1972/MSBuildSandbox: A Unit Test framework for development

        *   its a simplified version without all the stuff from our repo in it. 
        
        *   used it to develop new MSbuild Tasks

        *   https://github.com/dellis1972/MSBuildSandbox/blob/main/MSBuildSandbox.Tests/Tests.cs#L20
