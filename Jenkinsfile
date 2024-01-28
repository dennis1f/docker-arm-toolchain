pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
                git 'https://source.denx.de/u-boot/u-boot.git'
                sh 'make rpi_3_32b_defconfig'
                sh 'CROSS_COMPILE=arm-linux-gnueabi- make'
            }
        }
    }
}