pipeline {
    agent any
    tools {
        maven 'maven-default'
        jdk 'openjdk8-zulu'
    }
    stages {
        stage ('Initialize') {
            steps {
                sh 'java -version'
                sh 'echo JAVA_HOME = ${JAVA_HOME}'
                sh '''
                    echo "PATH = ${PATH}"
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