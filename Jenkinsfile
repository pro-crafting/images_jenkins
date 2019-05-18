pipeline {
    agent any
    tools {
        maven 'maven-default'
        jdk 'openjdk8-zulu'
    }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    env.JAVA_HOME="${tool 'jdk-8u45'}"
                    env.PATH="${env.JAVA_HOME}/bin:${env.PATH}"
                    sh 'java -version'
                    echo "M2_HOME = ${M2_HOME}"
                '''
            }
        }

        stage ('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
    }
}