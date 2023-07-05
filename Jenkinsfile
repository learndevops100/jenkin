properties([
                            parameters([
                                [$class: 'ChoiceParameter', 
                                    choiceType: 'PT_CHECKBOX', 
                                    description: 'Select the Application Service from the Dropdown List', 
                                    filterLength: 1, 
                                    filterable: false, 
                                    name: 'data_center', 
                                      script: [
                                        classpath: [], 
                                        sandbox: false, 
                                        script: 
                                            "return['DC01', 'DC02', 'DC03']"
                                      ]
                                ],
                                [$class: 'DynamicReferenceParameter', 
                                    choiceType: 'ET_FORMATTED_HTML', 
                                    description: 'enter job params',
                                    name: 'hostname', 
                                    referencedParameters: 'data_center', 
                                    script: 
                                        [$class: 'GroovyScript', 
                                        fallbackScript: [
                                                classpath: [], 
                                                sandbox: false, 
                                                script: "return['']"
                                                ], 
                                        script: [
                                                classpath: [], 
                                                sandbox: false, 
                                                script: '''
                                                if (data_center.contains('DC01')){
                                                    return """<textarea name=\"value\" rows=\"5\" class=\"setting-input   \"></textarea>"""

                                                } else 
                                                if (data_center.contains('DC02')){
                                                    return """<textarea name=\"value\" rows=\"5\" class=\"setting-input   \"></textarea>"""

                                                }
                                                '''
                                            ] 
                                    ],
                                omitValueField: true
                                ],
                                [$class: 'DynamicReferenceParameter', 
                                    choiceType: 'ET_FORMATTED_HTML', 
                                    description: 'enter job params',
                                    name: 'ipaddress', 
                                    referencedParameters: 'data_center', 
                                    script: 
                                        [$class: 'GroovyScript', 
                                        fallbackScript: [
                                                classpath: [], 
                                                sandbox: false, 
                                                script: "return['']"
                                                ], 
                                        script: [
                                                classpath: [], 
                                                sandbox: false, 
                                                script: '''
                                                if (data_center.contains('DC01')){
                                                    return """<textarea name=\"value\" rows=\"5\" class=\"setting-input   \"></textarea>"""

                                                } else 
                                                if (data_center.contains('DC02')){
                                                    return """<textarea name=\"value\" rows=\"5\" class=\"setting-input   \"></textarea>"""

                                                }
                                                '''
                                            ] 
                                    ],
                                omitValueField: true
                                ],
                                [$class: 'DynamicReferenceParameter', 
                                    choiceType: 'ET_FORMATTED_HTML', 
                                    description: 'enter job params',
                                    name: 'port_number', 
                                    referencedParameters: 'data_center', 
                                    script: 
                                        [$class: 'GroovyScript', 
                                        fallbackScript: [
                                                classpath: [], 
                                                sandbox: false, 
                                                script: "return['']"
                                                ], 
                                        script: [
                                                classpath: [], 
                                                sandbox: false, 
                                                script: '''
                                                if (data_center.contains('DC02')){
                                                    return """<textarea name=\"value\" rows=\"5\" class=\"setting-input   \"></textarea>"""

                                                }
                                                '''
                                            ] 
                                    ],
                                omitValueField: true
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
            }
        }
    }
}
