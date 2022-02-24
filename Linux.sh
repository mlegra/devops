pipeline {
    agent any
    stages {
        stage('execute') {
            steps {
		script {
			echo 'Using remote command over ssh'
			sh 'echo "Today is:" date'
			echo '*** Executing remote commands ***'
	 		sh '''#!/bin/bash
				date
				ssh oracle@192.168.180.129 << ENDSSH
				/home/oracle/create-user
			    	date
			    	cd /tmp
			    	pwd
ENDSSH
'''

			sh '''
				date
				ssh root@192.168.180.129 << ENDSSH
				javac -version
				yum install -y httpd
				date
				cd /tmp
				pwd
ENDSSH
'''
                }
            }
        }
		
		stage('Post-Install') {
            steps {
		script {
			echo 'Using remote command over ssh'
			sh 'echo "Today is:" date'
			echo '*** Executing remote commands ***'
	 		sh '''#!/bin/bash
				date
				ssh oracle@192.168.180.129 << ENDSSH
				cat users.txt
			    	date
			    	cd /tmp
			    	pwd
ENDSSH
'''


                }
            }
        }
    }
}

