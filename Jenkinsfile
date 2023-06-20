pipeline{
    agent any
    stages{
        stage('get main ansible repository')
        {
            steps{
				sshAgent (credentials: ['ansible_ansiuser'] {
					git branch: 'main', url: 'https://github.com/jjess/jenkins_ansible_maven_tomcat_docker'
				}
			}
        }
        
        stage('execute playbook')
        {
            steps{
				sshAgent (credentials: ['ansible_ansiuser'] {
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
}

