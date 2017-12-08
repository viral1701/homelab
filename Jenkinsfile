node('windows') {


    stage ('Checkout') {

    checkout scm

    }


        stage ('Build') {
        powershell ''''

            $VAR_A = "test"
            Write-Host "MyResult: '$VAR_A'"

            '''
        }


}