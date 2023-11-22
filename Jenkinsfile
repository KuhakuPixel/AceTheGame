pipeline {

    agent any
    stages {
        stage('Build') {
            steps {
                echo "Building"
                sh '''
			cd ACE
			mkdir build && cd build
			cmake ../
			make -j4
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Unit Test"
                sh '''
			cd ACE/build
			./test/test_ace
                '''
            }
        }
    }
}
