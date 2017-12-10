node('windows') {

//def msBuild2017 = '"C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\BuildTools\\MSBuild\\15.0\\Bin\\MSBuild.exe"'
//def msBuildArg = ('/p:Configuration=Release /verbosity:normal /maxcpucount')
def solutionfile = "${env.WORKSPACE}\\HomeLab\\HomeLab.sln"
//def build = "${env.WORKSPACE}\\Build.ps1"


    stage ('Checkout') {

    checkout scm

    }


        stage ('Build') {
        //bat "echo ${solutionfile}"
        bat "\"${tool 'MSBuild'}\" ${solutionfile} /p:Configuration=Release /verbosity:normal /maxcpucount"
        //powershell "${build}"
        }


}