pipeline {
    agent any
    parameters {
        string(name: 'File', defaultValue: 'File1', description: 'Who should I say hello to?'),
        choice(name:"NeedUpgradePC",choices:['yes','no'],description: "Do you need upgrade your PC")
    }
    stages {
        stage('Parameters'){
                steps {
                    script {
                    properties([
                            parameters([
                                [$class: 'ChoiceParameter', 
                                    choiceType: 'PT_SINGLE_SELECT', 
                                    description: 'Select the Environemnt from the Dropdown List', 
                                    filterLength: 1, 
                                    filterable: false, 
                                    name: 'Env', 
                                    script: [
                                        $class: 'GroovyScript', 
                                        classpath: [], 
                                            sandbox: false, 
                                            script: 
                                                "return['dev','stage','prod']"
                                    ]
                                ],
                                [$class: 'DynamicReferenceParameter', 
                                    choiceType: 'ET_ORDERED_LIST', 
                                    description: 'Select the  AMI based on the following infomration', 
                                    name: 'Image Information', 
                                    referencedParameters: 'Env', 
                                    script: 
                                        [$class: 'GroovyScript', 
                                        script: 'return["Could not get AMi Information"]', 
                                        script: [
                                            script: '''
                                                    if (Env.equals("dev")){
                                                        return["ami-sd2345sd:  AMI with Java", "ami-asdf245sdf: AMI with Python", "ami-asdf3245sd: AMI with Groovy"]
                                                    }
                                                    else if(Env.equals("stage")){
                                                        return["ami-sd34sdf:  AMI with Java", "ami-sdf345sdc: AMI with Python", "ami-sdf34sdf: AMI with Groovy"]
                                                    }
                                                    else if(Env.equals("prod")){
                                                        return["ami-sdf34sdf:  AMI with Java", "ami-sdf34ds: AMI with Python", "ami-sdf3sf3: AMI with Groovy"]
                                                    }
                                                    '''
                                                ]
                                        ]
                                ]
                            ])
                        ])
                    }
                }
            }
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
            }
        }
    }
}
