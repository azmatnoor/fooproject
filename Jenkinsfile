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
     stage('robot') {
            steps {
                sh 'robot --variable BROWSER:headlesschrome -d Results infotiveCarRental.robot'
            }
            post {
                always {
                    script {
                          step(
                                [
                                  $class              : 'RobotPublisher',
                                  outputPath          : 'results',
                                  outputFileName      : '**/output.xml',
                                  reportFileName      : '**/report.html',
                                  logFileName         : '**/log.html',
                                  disableArchiveOutput: false,
                                  passThreshold       : 50,
                                  unstableThreshold   : 40,
                                  otherFiles          : "**/*.png,**/*.jpg",
                                ]
                           )
                    }
                }
            }
        }
   
    }
}
 
 
