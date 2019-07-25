 AWS activities Create three EC2 instances with the names DevTools, CI, QA, Docker (this instance will be used only on step number 5)

Prepare DevTools On the DevTools instance install Java 8, Maven, Git, Jenkins, Artifactory and Ansible
Configure CI/CD tools 

Artifactory:

Create repository for build artifacts. Also, this repository will be used for deployment procedure
Create user, which will have access to created repository

Jenkins:

Install required plugin, like git, maven, matrix role
Disable anonymous access and create some user
Create build flow with the next steps - CHECKOUT, BUILD, UPLOAD ARTIFACT, CI DEPLOY

Create deployment jobs for CI and QA environment's
Steps descriptions:

CHECKOUT: should be triggered after each commit to master branch in repository

BUILD: to build application use mvn clean install

UPLOAD ARTIFACT: upload created artifact with the next name convention: <application-name>.<build-version>.jar. Please use Artifactory user

CI DEPLOY: Ansible role should deploy latest version of application from Artifactory to CI environment

Ansible:

Create deployment role which download and run application. To run application: java –jar path/to/jar/file.jar --server.port=8080 (port should be parametrized)
Create provisioning role, which install java, docker, create system user, create folders and other required staff on CI and QA environment's