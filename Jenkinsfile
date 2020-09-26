pipeline 
{
    agent any
   
    stages
    {
        
       stage('Install Ansible ')
       {
        
       }
       stage('Install Terraform ')
       {
        
       }
       stage('Clone Existing Project')
        {
       
            // I have configured credentials in Jenkins with its id as anurag4516 & set password
            //We can also do ssh cloning for that we need to add public key to git 
            steps
            {
            git branch: 'master',
                credentialsId: 'anurag4516',
                url: 'https://github.com/kuberguy/helloworld.git'

            sh "ls -lat"
            echo "Successfully Checkout of project "
            }
        
        }
            
         stage("Deploy and Install in AWS ")
        {

        }  
        stage("Validate ")
         {
            steps 
            {
                sh '''
                echo "Building Image from Output snapshot of Package command"
                
                
                 '''
            }
        }
        
        
        stage("Destroy")
        {
            steps 
            {
             sh '''
                echo "Building Image from Output snapshot of Package command"
                
                
                 '''
            }
        }
        
    }
   
    

}
