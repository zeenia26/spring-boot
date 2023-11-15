pipeline { 
    agent any 
    
    tools { 
        maven 'MAVEN3'
        jdk 'JDK8'
    } 
    
    environment { 
        DOCKER_IMAGE_NAME = 'zeenia/spring-app'
        DOCKER_DB_IMAGE_NAME = 'zeenia/mysql'
    }
    
    stages { 
        stage ('Build Maven') { 
            steps { 
                script { 
                     checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/zeenia26/spring-boot']])
                     sh 'mvn clean package -Dmaven.test.skip=true'
                     sh 'cp target/*.jar ./Docker-files/app/ '
                     sh 'ls ./Docker-files/app '
                }
            }
        }
        
        stage('Build Docker Image'){ 
            steps { 
                    script { 
                        sh 'docker build -t $DOCKER_IMAGE_NAME ./Docker-files/app'
                        sh 'docker build -t $DOCKER_DB_IMAGE_NAME ./Docker-files/db'
                    }
            }
        }
        
        stage ('Push the Image') { 
            steps { 
                script { 
                    withCredentials([string(credentialsId: 'dockerhub', variable: 'DOCKER_USERNAME')]) {
                        sh 'docker login -u zeenia -p ${DOCKER_USERNAME}'
                    }
                sh 'docker push $DOCKER_IMAGE_NAME'
                sh 'docker push $DOCKER_DB_IMAGE_NAME'
                }
            }
        }
    }
}
