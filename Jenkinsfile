properties([
    parameters([
        choice(
            name: 'ENV',
            choices: [
                'dev',
                'prod'
            ]
        ),
        [$class: 'ChoiceParameter',
            choiceType: 'PT_RADIO',
            filterLength: 1,
            filterable: false,
            name: 'CHOICES',
            script: [
                $class: 'GroovyScript',
                fallbackScript: [
                    classpath: [],
                    sandbox: false,
                    script: 'return ["Check Jenkins ScriptApproval page"]'
                ],
                script: [
                    classpath: [],
                    sandbox: false,
                    script: 'return ["One","Two:selected"]'
                ]
            ]
        ]
    ])
])

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
               echo 'Hello I am uplaodung '
              #script { 
               #  def server = Artifactory.server 'artifactory'           
                # def uploadSpec = """{
                 #   "files": [{
                  #     "pattern": "/var/lib/jenkins/workspace/vineetpipepline/*.zip",
                   #    "target": "example-repo-local",
                    #   "recursive": "false"
                    #}]
                 #}"""

                 #server.upload(uploadSpec) 
               #}
            }
        }
    }
}
