script {
			echo 'Using remote command over ssh'
			sh 'echo "Today is:" date'
			echo '*** Executing remote commands ***'
	 		sh '''#!/bin/bash
				date
				ssh oracle@192.168.180.129 >> 'EOF'
				java -version
			    	date
			    	cd /tmp
			    	pwd
<<- 'EOF'
'''

			sh '''
				date
				ssh oracle@192.168.180.129 >> 'EOF'
				javac -version
				date
				cd /tmp
				pwd
<<- 'EOF'
'''
         
            }
