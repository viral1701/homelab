node('windows') {


    stage ('Checkout') {

    checkout scm

    }


        stage ('Build') {
        powershell '''

            $VAR_A = 'test'
            Write-Host "My Result: '$VAR_A'"

            '''
        }


}