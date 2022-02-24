pipeline {
    agent any
    stages {
        stage('execute') {
            steps {
		script {
			echo 'Using remote command over ssh'
			sh 'echo "Hello World"'
			
'''

			
                }
            }
        }
		
    }
}

