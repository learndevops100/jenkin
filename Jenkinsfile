pipeline {
    agent any
        stages {
            stage('Parameters'){
                steps {
                    script {
                    properties([
                            parameters([
                                [$class: 'ChoiceParameter', 
                                    choiceType: 'PT_SINGLE_SELECT', 
                                    description: 'Select the Option from the Dropdown List', 
                                    filterLength: 1, 
                                    filterable: false, 
                                    name: 'Option', 
                                    script: [
                                        $class: 'GroovyScript', 
                                        fallbackScript: [
                                            classpath: [], 
                                            sandbox: false, 
                                            script: 
                                                "return['Could not get The environemnts']"
                                        ], 
                                        script: [
                                            classpath: [], 
                                            sandbox: false, 
                                            script: 
                                                "return['branch','tag']"
                                        ]
                                    ]
                                 ],
                                [$class: 'DynamicReferenceParameter', 
                                    choiceType: 'ET_FORMATTED_HTML', 
                                    description: 'Please write branch name',
                                    name: 'Branch',
                                    omitValueField: true,
                                    referencedParameters: 'Option', 
                                    script: 
                                        [$class: 'GroovyScript', 
                                        fallbackScript: [
                                                classpath: [], 
                                                sandbox: false, 
                                                script: "return['Could not get Environment from Env Param']"
                                                ], 
                                        script: [
                                                classpath: [], 
                                                sandbox: false, 
                                                script: 
                                                """ if (Option.equals("branch")){
                                                    inputBox = "<input name='value' class='setting-input' type='text'>"
                                                    return inputBox                                                    
                                                }                                                
                                                """.stripIndent()
                                            ] 
                                        ]
                                 ],
                                  [$class: 'DynamicReferenceParameter', 
                                    choiceType: 'ET_FORMATTED_HTML', 
                                    description: 'Please write Tag name',
                                    name: 'Tag',
                                    omitValueField: false,
                                    referencedParameters: 'Option', 
                                    script: 
                                        [$class: 'GroovyScript', 
                                        fallbackScript: [
                                                classpath: [], 
                                                sandbox: false, 
                                                script: "return['Could not get Environment from Env Param']"
                                                ], 
                                        script: [
                                                classpath: [], 
                                                sandbox: false, 
                                                script: '''
                                                if (Option.equals("tag")){
                                                    inputBox = "<input name='value' class='setting-input' type='text'>"
                                                    return inputBox                                                    
                                                }                                                
                                                '''.stripIndent()
                                            ] 
                                        ]
                                 ]     
                            ])
                        ])
                    }
                }
            }
        }   
}
