def workspace = env.JOB_NAME

stage ("Checkout") {
    node ('windows') {
        ws ("workspace/${workspace}") {
            scm_config = scm.getUserRemoteConfigs()[0]
            sshagent( [ scm_config.getCredentialsId() ] ) {
                withEnv ([ "GIT_SSH=ssh" ] ) {
                    if (! fileExists('Jenkinsfile') ) {
                        bat "git clone ${scm_config.getUrl()} ."
                    } else {
                        bat "git pull"
                    }
                }
            }
            bat "checkout_windows.bat"
        }
    }
}

stage ("Build") {
    node ('windows') {
        ws ("workspace/${workspace}") {
            bat "build_windows_x86_64.bat"
        }
    }
}

stage ("Archive") {
    node ('windows') {
        ws ("workspace/${workspace}") {
            archiveArtifacts artifacts: "tensorflow/tensorflow/contrib/cmake/build_windows_x86_64/RelWithDebInfo/tf_sharedlib.*", fingerprint: true
        }
    }
}




