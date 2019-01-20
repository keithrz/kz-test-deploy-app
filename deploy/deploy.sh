#deploy: # from https://docs.travis-ci.com/user/deployment/custom/
#  - eval "$(ssh-agent -s)" #start the ssh agent
#  - chmod 600 .travis/deploy_key.pem # this key should have push access
#  - ssh-add .travis/deploy_key.pem
#  - git remote add deploy ssh://bitnami@http://18.191.210.81/~/repos/kz-test-deploy-app
#  - git push deploy

eval "$(ssh-agent -s)" #start the ssh agent
chmod 600 .travis/deploy_key.pem # this key should have push access
ssh-add .travis/deploy_key.pem
git remote add deploy ssh://bitnami@http://18.191.210.81/~/repos/kz-test-deploy-app
echo before push
git push deploy --force
echo after push
