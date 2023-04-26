#!/bin/bash
KEY_PAIR=tutorial-cluster
    ecs-cli up \
      --keypair $KEY_PAIR  \
      --capability-iam \
      --size 1 \
      --instance-type t2.micro \
      --tags project=tutorial-cluster,owner=raphael \
      --cluster-config tutorial \
      --ecs-profile tutorial