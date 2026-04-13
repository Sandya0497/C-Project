pipeline {
    agent any

         stages {

             stage('checkout'){ 
               steps {
                  git branch: 'main', url: 'https://github.com/Sandya0497/C-Project'      

               }
             }
             stage('Build WAR with Maven') {
  steps {
    sh 'mvn clean package'
  }
}
            stage('Login to ECR'){
             steps{
              withAWS(region: 'ap-south-1', credentials: 'aws-creds'){
                sh '''
                password=$(aws ecr get-login-password --region ap-south-1)
                 docker login  --username  AWS --password $password 678632989999.dkr.ecr.ap-south-1.amazonaws.com

                 '''

               }           
  
              }

            }

           stage('Build docker image'){
            steps {
                
                    sh '''
                        echo "Building Docker image..."
                        docker build -t test-project:latest .
                        docker tag test-project:latest 678632989999.dkr.ecr.ap-south-1.amazonaws.com/test-project:latest
                              '''
                    }

                 }
             stage('Push Docker Image to ECR') {
            steps {
                
                    sh '''
                        echo "Pushing Docker image to ECR..."
                        docker push 678632989999.dkr.ecr.ap-south-1.amazonaws.com/test-project:latest
                    '''
                }
            }

          }
       }
