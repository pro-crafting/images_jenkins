pipeline {
    agent any
    tools {
        maven 'maven-default'
        jdk 'openjdk8-zulu'
    }
    stages {
        stage ('Build') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'dockerUserName', passwordVariable: 'dockerPassword')]) {
                  sh 'mvn -Ddocker.username=$dockerUserName -Ddocker.password=$dockerPassword clean deploy'
                }
            }
        }
    }
}