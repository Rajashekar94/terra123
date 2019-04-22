properties([gitLabConnection(''), [$class: 'GitlabLogoProperty', repositoryName: ''],
            parameters([choice(choices: ['Ubuntu_16.04', 'Ubuntu_18.06', 'CentOs', 'Red-Hat'], 
                               description: 'Select the OS ', name: 'Ubuntu')])])

node {
   stage 'checkout'
   
            git 'https://github.com/Rajashekar94/terra123.git', Ubuntu: "${params.Ubuntu_16.04}"

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


 

