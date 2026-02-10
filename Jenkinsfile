pipeline {
    agent any

    options {
        timestamps()
        disableConcurrentBuilds()
    }

    stages {

        stage('Test') {
            steps {
                echo 'Exécution de test'
                bat 'mvn test'
                junit 'target/surefire-reports/*.xml'
                cucumber reportTitle: 'API Report',
                  fileIncludePattern: 'target/example-report.json'
            }
        }

    }
}
