node('windows') {

    {
    stage 'Checkout'
    Checkout scm

    }

    {
        stage 'Build'
        powershell 'Build.ps1'
        }
}