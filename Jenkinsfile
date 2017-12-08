node('windows') {


    stage ('Checkout') {

    checkout scm

    }


        stage ('Build') {
        powershell -File Build.ps1
        }


}