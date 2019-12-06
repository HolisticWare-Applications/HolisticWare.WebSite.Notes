#! "netcoreapp2.0" 
#r "nuget: MavenNet, 2.0.2"
#r "nuget: System.ValueTuple"


// scriptcs -install MavenNet
// #r "MavenNet" // NOT NEEDED
//#r "Maven" // NOT NEEDED



using MavenNet;

static async Task PrintDeps()
{
	var artifacts = new List<(string GroupId, string ArtifactId, string Version)>
	{
		(GroupId: "com.google.android.gms", ArtifactId: "play-services-basement", Version: "15.0.1"),
		(GroupId: "com.google.android.gms", ArtifactId: "play-services-base", Version: "15.0.1"),
		(GroupId: "com.google.android.gms", ArtifactId: "play-services-vision", Version: "15.0.1"),
		(GroupId: "com.google.android.gms", ArtifactId: "play-services-ads", Version: "15.0.1"),
		(GroupId: "com.google.android.gms", ArtifactId: "play-services-ads-lite", Version: "15.0.1"),
		(GroupId: "com.google.android.gms", ArtifactId: "play-services-analytics", Version: "15.0.1"),
		(GroupId: "com.google.android.gms", ArtifactId: "play-services-analytics-impl", Version: "15.0.1"),
		(GroupId: "com.google.android.gms", ArtifactId: "play-services-auth", Version: "15.0.1"),
		(GroupId: "com.google.android.gms", ArtifactId: "play-services-auth-base", Version: "15.0.1"),
		(GroupId: "com.google.android.gms", ArtifactId: "play-services-auth-api-phone", Version: "15.0.1"),
		(GroupId: "com.google.android.gms", ArtifactId: "play-services-awareness", Version: "15.0.1"),
		(GroupId: "com.google.android.gms", ArtifactId: "play-services-appinvite", Version: "15.0.1"),

	};

	// https://github.com/Redth/MavenNet
	var repo = MavenRepository.FromGoogle();
	await repo.Refresh();

	foreach (var artifact in artifacts) 
	{
		var proj = await repo.GetProjectAsync(artifact.GroupId, artifact.ArtifactId, artifact.Version);

		Console.WriteLine($"{proj.Name} {proj.ArtifactId}");
		foreach (var dep in proj.Dependencies)
			Console.WriteLine($"\t{dep.GroupId}->{dep.ArtifactId}:{dep.Version}");
	}
}

await PrintDeps();
