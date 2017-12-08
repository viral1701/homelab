node('windows') {


    stage ('Checkout') {

    checkout scm

    }


        stage ('Build') {
        powershell 'Build.ps1'
        }


}