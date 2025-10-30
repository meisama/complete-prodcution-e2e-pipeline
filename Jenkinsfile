pipeline{
    agent{
        label "local-agent"
    }
    tools {
        jdk 'Java17'
        maven 'Maven3'
    }

    stages{
        stage("Cleanup Workspace"){
            steps {
                cleanWs()
            }

        }
    
        stage("Checkout from SCM"){
            steps {
		git branch: "feature/my-change", credentialsId: 'github', url: 'https://github.com/meisama/complete-prodcution-e2e-pipeline'

            }

        }
    }

}
