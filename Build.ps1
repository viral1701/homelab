$MSBuildPath = "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\MSBuild\15.0\Bin\MSBuild.exe"
$BuildConfiguration = "Release"
$MsBuildLoggingVerbose = "normal"
$MsBuild = "/maxcpucount"
$SolutionPath = "${env:WORKSPACE}\\HomeLab\\HomeLab.sln"

& $MSBuildPath $SolutionPath /p:Configuration=$BuildConfiguration /verbosity:$MsBuildLoggingVerbose $MsBuild