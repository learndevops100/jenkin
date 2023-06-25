pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Hello, I am building environment'
                sh """
                touch vineet.txt
                echo "i am testing file" >> vineet.txt
                zip test.zip vineet.txt
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
