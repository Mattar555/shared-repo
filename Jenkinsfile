pipeline {
     agent any
         stages {
             stage('checks') {
             steps {
               script {
                   echo "first step"
                   echo env.WORKSPACE
                   def workspace = env.WORKSPACE
               }
         
                 }
             }
           stage('Checkout external proj') {
             steps {
               git branch: 'main',
               credentialsId: 'openshift-github-ssh-key' // This is stored within your Jenkins, used to clone the repository below, Change name accordingly.
               url: 'git@github.ibm.com:Langley-Millard/tfnsw-ace-test.git' // Change this accordingly
         
                 }
             }
            stage('create buildconfig') {
                steps {
                    script{
                    openshift.withCluster(){
                        openshift.withProject('tfnsw-mq-ace'){ // This is the name of the openshift project (K8 namespace), can change it if you wish
                        def fromYaml = openshift.create( readFile( 'yaml/jfrog-push-bc.yaml')) 
                    }
                        
                    }
                    }
                }
            }
            stage('create build') {
                steps {
                    script{
                    openshift.withCluster(){
                        openshift.withProject('tfnsw-mq-ace'){
                            //need to specify an auth token here. i have no idea why it doesnt use the Jenkins Service account. 
                        def createBuild = openshiftBuild(bldCfg: 'dockerfile-buildconfig', namespace: 'tfnsw-mq-ace') // Change ns according to above (if changed)
                    }
                        
                    }
                    }
                }
            }
         }
 }
