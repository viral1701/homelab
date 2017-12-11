node('windows') {

def solutionfile = "${env.WORKSPACE}\\HomeLab\\HomeLab.sln"

    stage ('Checkout') {

    checkout scm

    }


        stage ('Build') {
        bat "\"${tool 'MSBuild'}\" ${solutionfile} /p:Configuration=Release /verbosity:normal /maxcpucount"
        }


}