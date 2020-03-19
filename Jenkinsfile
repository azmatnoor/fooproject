 pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/azmatnoor/fooproject.git'
            }
        }
     stage('newman') {
            steps {
                sh 'newman run AZ.Restful_Booker.postman_collection.json --environment AZ.Restful_Booker.postman_environment.json --reporters junit'
            }
            post {
                always {
                        junit '**/*xml'
                    }
                }
        

        }
     
    }
}
 
 
