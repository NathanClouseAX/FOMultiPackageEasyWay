# from https://github.com/vxzry/d365fo-template/blob/main/unregisterSymbolicLink.ps1
$AOSMetadataPath = "C:\AOSService\PackagesLocalDirectory"
$RepoPath = "C:\Users\Admin4b2aaec26a\source\repos\NathanClouseAX\FOMultiPackageEasyWay"
$RepoMetadataPath = $RepoPath + "\Metadata"
$RepoModelFolders = Get-ChildItem $RepoMetadataPath -Directory
foreach ($ModelFolder in $RepoModelFolders)
{
	cmd /c rmdir "$AOSMetadataPath\$ModelFolder"
}