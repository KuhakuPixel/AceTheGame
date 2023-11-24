pipeline {

    agent any
    stages {
        stage('[ACE] Build') {
            steps {
                echo "Building"
                sh '''
			cd ACE
			rm -rf build && mkdir build && cd build
			cmake ../
			make -j4
                '''
            }
        }
        stage('[ACE] Test') {
            steps {
                echo "Unit Test"
                sh '''
			cd ACE/build
			./test/test_ace
                '''
            }
        }

        stage('[Modder] Build') {
            steps {
                echo "Building"
                sh '''
			cd Modder
			./gradlew build -x test 
                '''
            }
        }
        stage('[Modder] Test') {
            steps {
                echo "Unit Test"
                sh '''
			cd Modder
			./gradlew test
                '''
            }
        }

        stage('[APK] Build') {
            steps {
                echo "Building"
                sh '''
			cd ATG
			./gradlew assembleRelease
                '''
            }
        }
    }
}
