pipeline {
    agent any
    parameters {
        string(name: 'File', defaultValue: 'File1', description: 'Who should I say hello to?')
        activeChoiceParam('deploy') {
          choiceType('RADIO')
          groovyScript {
            script("return ['true', 'false']")
            fallbackScript("return ['error']")
          }
        }
    }
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
        stage('upload') {
           steps {
              script { 
                 def server = Artifactory.server 'artifactory'           
                 def uploadSpec = """{
                    "files": [{
                       "pattern": "/var/lib/jenkins/workspace/vineetpipepline/*.zip",
                       "target": "example-repo-local",
                       "recursive": "false"
                    }]
                 }"""

                 server.upload(uploadSpec) 
               }
            }
        }
    }
}
