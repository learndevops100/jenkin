pipeline {
    agent any
    parameters {
        string(name: 'File', defaultValue: 'File1', description: 'Who should I say hello to?')
    }
    stages {
        stage('Build') {
            steps {
                echo 'Hello, I am building environment'
                sh """
                touch $"File"
                echo "i am testing file" >> $"File"
                zip test.zip $"File"
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
