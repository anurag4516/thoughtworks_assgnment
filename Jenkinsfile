pipeline 
{
     agent {
        docker { image 'ubuntu:bionic' }
    }
    stages
    {
          stage('Install Basic Packages ')
         {
              sh '''
               apt update;                    
               apt-get -y install python3 python3-nacl python3-pip libffi-dev curl lsb-release software-properties-common ;
              '''
         }
        
       stage('Install Ansible ')
       {
            steps {
                  
                sh '''  
                     
                     pip3 install ansible;                   
                     ansible --version;
                
                '''
               
            }
        
       }
       stage('Install Terraform ')
       {
           steps {
                sh '''
                    curl -fsSL https://apt.releases.hashicorp.com/gpg |  apt-key add -;
                    apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main";
                    apt-get update && apt-get install terraform;
                    terraform --version;                   
                
                
                '''
               

               
            }
        
       }
       stage('Clone Existing Project')
        {
       
            // I have configured credentials in Jenkins with its id as anurag4516 & set password
            steps {
                checkout scm;
               
            }
           
        
        }
          
              
         stage("Deploy and Install in AWS ")
        {
          
             steps {
                 sh '''
                 cd terraformcode;
                 terraform init;
                 terraform plan
                 
                 '''
               
            }
           
        }  
         
         
            

        stage("Validate ")
         {
             steps {
                sh 'echo "Hello World"'
               
            }
            
        }
        
        
        stage("Destroy")
        {
            steps {
                sh '''
                 terraform destroy -autoapprove
                 '''
               
            }
        }
        
    }
   
 post {
        always {
              sh '''
                 terraform destroy -autoapprove
                 '''
            echo 'One way or another, I have finished'
            deleteDir() /* clean up our workspace */
        }
 }

}
