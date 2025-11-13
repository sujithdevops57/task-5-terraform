pipeline {
    agent {
      label "label-1-node-1"
    }
    environment {
        Google_Application_Credentials = credentials('gcp-credentials')
    }
   
      parameters {
        choice(
            name: 'ACTION',
            choices: ['apply', 'destroy'],
            description: 'Select what Terraform should do'
        )
    }

    stages {
        stage("cloning"){
           steps {
            cleanWs()
            echo "we are cloning the git file "
            sh 'git clone https://github.com/sujithdevops57/task-5-terraform.git'

           }
        }
        stage("perform terraform"){
             when {
                expression { params.ACTION == 'apply' }
            }
            steps{
                echo ""
                dir ('/home/sujithmanelli4321/task-5-terraform'){
                    sh 'terraform init'
                    sh 'terraform apply --auto-approve'
                }
                
            }

        }
        stage("destroy terraform"){
             when {
                expression { params.ACTION == 'destroy' }
            }
            steps{
                echo ""
                dir ('/home/sujithmanelli4321/task-5-terraform'){
                    sh 'terraform destroy --auto-approve'
                }
                
            }

        }
    }
}
