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

    }


 

