pipeline {
    agent any
   
    environment {
        AWS_ACCESS_KEY_ID = credentials('Ola-AWS')
        AWS_SECRET_ACCESS_KEY = credentials('Ola-AWS')
        AWS_DEFAULT_REGION = "us-east-1"
    }
    stages {
        stage('Checkout') {
            steps {
           git branch: 'main', url: 'https://github.com/OlatundeTai-Lawal/Jenkins-EKS.git'
  
            }
        }
    
        stage ("terraform init") {
            steps {
                sh "terraform init" 
            }
        }
  
        stage ("plan") {
            steps {
                sh "terraform plan" 
            }
        }
        stage (" Action") {
            steps {
                sh 'terraform ${action} --auto-approve' 
           }
        }
        stage("Deploy to EKS") {
            when {
               expression { params.apply }
            }
            steps {
                  sh "aws eks update-kubeconfig --name eks_cluster"
                   sh "kubectl apply -f deployment.yml"
             }
        }
    }
}
   
    
