pipeline {
    agent any

    options {
        timestamps()
        disableConcurrentBuilds()
    }

    stages {

        stage('Test') {
            steps {
                echo 'Exécution des tests unitaires...'
                bat 'mvn test'
                junit 'target/surefire-reports/*.xml'
            }
        }

    }
}
