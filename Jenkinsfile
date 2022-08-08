node{
   stage('SCM Checkout'){
     checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/MandeepKaur915/samplejavaapp.git']]])
   }

   stagestage ("build jar"){
      sh "mvn clean install"
   }
   
   stage('SonarQube Analysis') {
         withSonarQubeEnv('SonarQube'){
                
         sh "mvn sonar:sonar"
                
         }
    }
    
    stage("Quality Gate Statuc Check"){
          timeout(time: 1, unit: 'HOURS') {
              def qg = waitForQualityGate()
              if (qg.status != 'OK') {
                  error "Pipeline aborted due to quality gate failure: ${qg.status}"
              }
          }
      }
}
