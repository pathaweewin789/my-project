pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/username/my-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("my-project-image")
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    docker.image("my-project-image").inside {
                        sh 'node index.js'  // ใส่คำสั่งทดสอบ
                    }
                }
            }
        }
    }
}
