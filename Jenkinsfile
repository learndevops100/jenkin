pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Hello, I am building environment'
                sh """
                mkdir test.txt
                echo "i am testing file" >> test.txt
                zip test.zip test.txt
                """
            }
        }
        stage('Deploy') {
            steps {
                echo 'Hello, I am deploying environment'
            }
        }
        stage('Test') {
            steps {
                echo 'Hello, I am testingenvironment'
            }
        }
    }
}
