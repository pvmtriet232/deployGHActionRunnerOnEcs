#!/bin/bash
KEY_PAIR=tutorial-cluster
    ecs-cli up \
      --keypair $KEY_PAIR  \
      --capability-iam \
      --size 2 \
      --instance-type t3.micro \
      --tags project=tutorial-cluster,owner=raphael \
      --cluster-config tutorial \
      --ecs-profile tutorial