pipeline{
    agent any
    stages{
        stage ('compile stage')
        {
            steps{
                withMaven(maven : 'maven-3.6.3') {
                    sh 'maven clean compile'
                }

            }
        }
        stage ('test'){
            steps{
                withMaven(maven : 'maven-3.6.3')
                {
                    sh 'mvn test'
                }
            }
        }
        stage ('deployement stage') {
            steps{
                 withMaven(maven : 'maven-3.6.3') {
                    sh 'mvn deploy'
                 }
            }
        }
    }
}
