eval "$(ssh-agent -s)"
chmod 600 .travis/deploy_key.pem
ssh-add .travis/deploy_key.pem
scp -rp ./* bitnami@http://18.191.210.81/~/projects/kz-test-deploy-app
