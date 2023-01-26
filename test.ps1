# get the location of this file
$scriptpath = $MyInvocation.MyCommand.Path
# get the directory path to this file
$wd = Split-Path $scriptpath
# set the working directory as this file's directory
Push-Location $wd

# build the solution
& "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /t:Build /p:Platform=x86 /p:Configuration=Debug "simplefamilytree.sln"

# run the tests - add --diag:out.txt to get extra information if required
& "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\TestWindow\vstest.console.exe" Debug\simplefamilytree-tests.dll --logger:"console;verbosity=Normal"

Pop-Location