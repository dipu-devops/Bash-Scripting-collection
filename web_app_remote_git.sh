#!/bin/bash

# This script automates the deployment of a web application to a remote server
# It pulls the latest code from a Git repository, builds and packages the application, and deploys it to the remote server using SSH

set -x # Debug mode
set -e # Terminate when error
# Set up environment variables
GIT_REPO_URL="https://github.com/yourusername/your-repo.git" # Replace with your Git repository URL
APP_DIRECTORY="/var/www/html" # Replace with the directory path of your application on the remote server
REMOTE_HOST="your-remote-host" # Replace with the hostname or IP address of the remote server
REMOTE_USER="your-remote-user" # Replace with the username to SSH into the remote server

# Function to deploy application to remote server
deploy_to_remote_server() {
    echo "Deploying application to remote server..."
    # Pull latest code from Git repository
    git clone $GIT_REPO_URL
    # Build and package the application
    cd your-repo # Replace with your repository directory name
    # Run build commands (e.g., npm install, gulp build, etc.)
    # Package the application into a tarball
    tar czf app.tar.gz .
    # Copy the tarball to the remote server
    scp app.tar.gz $REMOTE_USER@$REMOTE_HOST:/tmp
    # SSH into the remote server and deploy the application
    ssh $REMOTE_USER@$REMOTE_HOST "cd $APP_DIRECTORY && tar xzf /tmp/app.tar.gz --strip-components=1 && rm /tmp/app.tar.gz"
    echo "Application deployed successfully to remote server!"
}

# Main function to trigger the deployment
main() {
    # Run the deploy to remote server function
    deploy_to_remote_server
}


