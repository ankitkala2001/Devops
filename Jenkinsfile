pipeline {

    agent any

    environment {
        IMAGE = "prt-image"
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/USERNAME/DevOps-Project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker rm -f prt || true
                docker run -d --name prt -p 8080:80 $IMAGE
                '''
            }
        }

        stage('Verify') {
            steps {
                sh 'curl localhost:8080'
            }
        }

    }
}
