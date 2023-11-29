pipeline {
    agent any
    stages {
        stage('git checkout') {
            steps {
                git(credentialsId: 'Github-Credentials',
                    branch: 'main',
                    url: 'https://github.com/Justin-De-Sio/maven.git')
            }
        }
        stage('Build the application'){
            steps{
                sh 'mvn clean install'
            }
        }
        stage('Unit Test Execution'){
            steps{
                sh 'mvn test'
            }
        }
        stage('Build the docker image'){
            steps{
                withCredentials([string(credentialsId: 'dockerhubpass', variable: 'dockerHubPass')]) {
                    sh "docker login -u funnax -p ${dockerHubPass}"

                }
                echo 'test'
                   sh 'docker build -t funnax/maven:1.0.0 .'
                    sh 'docker push '
            }
        }
    }
}

