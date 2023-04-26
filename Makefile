
KEY_PAIR=NewKeyPair
create-cluster: # create ecs cluster
	ecs-cli up \
	--keypair $(KEY_PAIR) \
    --capability-iam \
    --size 1 \
    --instance-type t2.micro \
    --tags project=tutorial-cluster,owner=raphael \
    --cluster-config tutorial \
	--ecs-profile tutorial
ecs-compose-up: # run docker-compose.yml on ECS cluster
	ecs-cli compose --project-name action-runner --file docker-compose.yml --debug service up --deployment-max-percent 100 --deployment-min-healthy-percent 0 --region us-east-2 --ecs-profile tutorial --cluster-config tutorial
ecs-compose-down: # run docker-compose.yml on ECS cluster
	ecs-cli compose --project-name action-runner --file docker-compose.yml \
	--debug service down --region us-east-2 \
	--ecs-profile tutorial --cluster-config tutorial
