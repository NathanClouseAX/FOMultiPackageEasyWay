# from https://github.com/vxzry/d365fo-template/blob/main/registerSymbolicLink.ps1
$AOSMetadataPath = "k:\AOSService\PackagesLocalDirectory"
$RepoPath = "C:\Users\Admin4b2aaec26a\source\repos\NathanClouseAX\FOMultiPackageEasyWay"
$RepoMetadataPath = $RepoPath + "\Metadata"
$RepoModelFolders = Get-ChildItem $RepoMetadataPath -Directory
foreach ($ModelFolder in $RepoModelFolders)
{
	$Target = "$RepoMetadataPath\$ModelFolder"
	New-Item -ItemType SymbolicLink -Path "$AOSMetadataPath" -Name "$ModelFolder" -Value "$Target"
}