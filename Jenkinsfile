pipeline{
    agent { label 'ansible-worker-node' } 
    stages{
        stage('get main ansible repository')
        {
            steps{
                git branch: 'main', url: 'https://github.com/jjess/jenkins_ansible_maven_tomcat_docker'
            }
        }
        
        stage('execute playbook')
        {
            steps{
                ansiblePlaybook(
					credentialsId: 'ansible_ansiuser', 
					disableHostKeyChecking: true, 
					installation: 'ansible', 
					inventory: 'inventory', 
					playbook: 'playbook_maven.yml' 
					)
            }
        }
	}        
}

