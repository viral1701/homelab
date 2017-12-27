node('windows') {

def buildversion = "1.0." + "${env.BUILD_NUMBER}"
def solutionfile = "${env.WORKSPACE}\\HomeLab\\HomeLab.sln"
def nuspecfile = "${env.WORKSPACE}\\Provision.Storage.nuspec"
def nugetpackage = "${env.WORKSPACE}\\Provision.Storage.${buildversion}.nupkg"
def octopusurl = "http://octopus.home.net/nuget/packages"
def outputdir = "output"

    stage ('Checkout') {

    checkout scm

    }

        stage ('Build') {
            bat "\"${tool 'MSBuild'}\" ${solutionfile} /p:Configuration=Release /verbosity:normal /maxcpucount"
        }

        stage ('Nuget Pack') {
            bat "\"C:\\Nuget\\Nuget.exe\" pack ${nuspecfile} -Version ${buildversion}"
        }

        stage ('Nuget Publish'){

            withCredentials([string(credentialsId: 'OctopusAPIKey', variable: 'APIKey')]){
            bat "\"C:\\Nuget\\Nuget.exe\" push ${nugetpackage} -APiKey ${APIKey} -Source ${octopusurl}"

            }

        }

        stage ('OutPut Build Number'){

            powershell "$version = ${buildversion} $version | Out-File .\\output.txt"
        }


}