pipeline {
    agent any

    options {
        timestamps()
        disableConcurrentBuilds()
    }

    stages {

        stage('Test') {
            steps {
                echo 'Exécution des tests...'
                bat 'mvn test'
                junit 'target/surefire-reports/*.xml'
            }
        }

        stage('Build') {
            steps {
                echo 'Build du projet et génération du JAR...'
                bat 'mvn clean package'  // génère le JAR dans target/
                archiveArtifacts artifacts: 'target/*.jar'  // archive le JAR
            }
        }


                stage('deploy') {
                    steps {

                        bat 'mvn deploy'

                    }
                }

    }
}
