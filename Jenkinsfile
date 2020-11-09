
        pipeline {
         agent any
            stages{
                stage("build"){
                    steps{
                        withCredentials([
                                usernamePassword(credentialsId: 'harbor-credentials', usernameVariable: 'HARBOR_USERNAME', passwordVariable: 'HARBOR_PASSWD')
                        ]){
                       sh "docker build -t hub.docker.com/demo/hello-golang:$BUILD_NUMBER ."
                       }
                    }
                }
                stage("test"){
                    steps{
                        echo "test stage ..."
                    }
                }
                stage("deploy"){
                    steps{
                        sh "kubectl apply -f deployment.yaml -n staging"
                        }
                    }
                }
            }
        }

