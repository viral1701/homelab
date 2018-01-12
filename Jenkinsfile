node('windows') {

def buildversion = "1.0." + "${env.BUILD_NUMBER}"
def solutionfile = "${env.WORKSPACE}\\HomeLab\\HomeLab.sln"
def nuspecfile = "${env.WORKSPACE}\\Provision.Storage.nuspec"
def nugetpackage = "${env.WORKSPACE}\\Provision.Storage.${buildversion}.nupkg"
def nugetrestore = "http://octopus.home.net/nuget/packages"
def octopusurl = "http://octopus.home.net/"
def outputdir = "output"
def projectname = "Provision.Storage"

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
            bat "\"C:\\Nuget\\Nuget.exe\" push ${nugetpackage} -APiKey ${APIKey} -Source ${nugetrestore}"

            }

        }

        stage ('Output Build Number'){
            withEnv(["buildnumber=${buildversion}"]){
                powershell '''
                    Write-Output "My Build Number Is $env:buildnumber"
                    $env:buildnumber | Out-File  ".\\output.txt"

            '''
            }

        }

        stage ('Archive build version number'){
            // Archive Build Output Number
            archiveArtifacts artifacts: 'output.txt'
        }

        stage ('Create Octopus Release'){
           withCredentials([string(credentialsId: 'OctopusAPIKey', variable: 'APIKey')]){
               bat "\"C:\\OctopusTools\\tools\\Octo.exe\" create-release --project=${projectname} --releaseNumber=${buildversion} --server ${octopusurl} --apiKey ${APIKey}"
           }
        }


}