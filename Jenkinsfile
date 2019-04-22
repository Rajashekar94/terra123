properties([gitLabConnection(''), [$class: 'GitlabLogoProperty', repositoryName: ''],
            parameters([choice(choices: ['Ubuntu_16.04', 'Ubuntu_18.06'], description: 'Select the OS ', name: 'Select OS')])])
node {
   stage 'checkout'
   
            git 'https://github.com/Rajashekar94/terra123.git'
                        
  stage('Terraform init'){

  sh "terraform init"
  }
 stage('Terraform plan'){

 sh "terraform plan"
 }

stage('Terraform apply'){

    sh "terraform apply -input=false -auto-approve"

    }
     stage('Terraform destroy'){

    sh "terraform destroy -input=false -auto-approve"

    }
   
    }


 

