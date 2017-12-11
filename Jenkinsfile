node('windows') {

def solutionfile = "${env.WORKSPACE}\\HomeLab\\HomeLab.sln"
def nuspecfile = "${env.WORKSPACE}\\Provision.Storage.nuspec"

    stage ('Checkout') {

    checkout scm

    }


        stage ('Build') {
            bat "\"${tool 'MSBuild'}\" ${solutionfile} /p:Configuration=Release /verbosity:normal /maxcpucount"
        }

        stage ('Nuget Pack') {
            bat "C:\\Nuget\\nuget.exe" pack "Provision.Storage.nuspec" -Version '1.0.0'
        }


}