node('windows') {


    stage ('Checkout') {

    checkout scm

    }


        stage ('Build') {
        posh 'Build.ps1'
        }

def posh(cmd) {
bat 'powershell.exe -NonInteractive -NoProfile -ExecutionPolicy Bypass -Command "& ' + cmd + '"'
}


}