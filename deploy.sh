./build.sh
source ./project.properties
aws cloudformation deploy --stack-name ${PROJECT_NAME}-infra --region ${DEFAULT_REGION} \
--template-file cloudformation/app-output.yaml \
--capabilities CAPABILITY_IAM CAPABILITY_AUTO_EXPAND \
--tags "stack-name=${PROJECT_NAME}-infra" "project-name=${PROJECT_NAME}"