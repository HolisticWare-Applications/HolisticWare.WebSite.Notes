# Dependencies from maven

dependencies-maven.md


```
static async Task PrintDeps()
{
	var artifacts = new List<Tuple<string, string, string>>
	{
		Tuple.Create("com.google.android.gms", "play-services-basement", "15.0.1"),
		Tuple.Create("com.google.android.gms", "play-services-base", "15.0.1"),
	};

	var repo = MavenRepository.FromGoogle();
	await repo.Refresh();

	foreach (var artifact in artifacts) {
		var proj = await repo.GetProjectAsync(artifact.Item1, artifact.Item2, artifact.Item3);

		foreach (var dep in proj.Dependencies)
			Console.WriteLine($"{dep.GroupId}->{dep.ArtifactId}:{dep.Version}");
	}
}
```