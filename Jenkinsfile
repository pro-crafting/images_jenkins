pipeline {
    agent any
    tools {
        maven 'maven-default'
        jdk 'openjdk8-zulu'
    }
    stages {
        stage ('Build') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'docker.username', passwordVariable: 'docker.password')]) {
                  sh 'mvn clean deploy'
                }
            }
        }
    }
}