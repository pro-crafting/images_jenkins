pipeline {
    agent any
    tools {
        maven 'maven-default'
        jdk 'openjdk8-zulu'
    }
    stages {
        stage ('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage ('Deploy') {
            when {
                not {
                    changeRequest()
                }
            }
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'dockerUserName', passwordVariable: 'dockerPassword')]) {
                    sh 'mvn -Ddocker.username=$dockerUserName -Ddocker.password=$dockerPassword docker:push'
                }
            }
        }
    }
}