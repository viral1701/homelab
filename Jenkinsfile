node('windows') {

def msBuild2017 = '"C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\BuildTools\\MSBuild\\15.0\\Bin\\MSBuild.exe"'
def solutionfile = "${env.WORKSPACE}\\HomeLab\\HomeLab.sln"


    stage ('Checkout') {

    checkout scm

    }


        stage ('Build') {
        bat echo "${solutionfile}"
        }


}