source ./project.properties
aws cloudformation package --template-file cloudformation/app.yaml --s3-bucket ${PROJECT_NAME}-tmp --output-template-file cloudformation/app-output.yaml