$assetPath = ".\asset";
$items = Get-ChildItem -Path $assetPath


class PkgMeta{
  [string] $originalFileName;
  [string] $assetstoreUrl; 
  [string] $type;  
}

foreach($item in $items){
  Write-Output $item
  if($item.Extension -eq ".unitypackage"){ 
      $input = Join-Path $assetPath $item.Name
      $output = Join-Path $item.Directory $item.Name.Split('.')[0]
      New-Item -Path $output -ItemType Directory -Force
      tar xzvf $input -C $output
  } 
}
 
function Write-ExtractPkg {
  param(
     [string] $Path,
     [string] $OutputPath
  ) 
}

function Read-PkgMeta{

}