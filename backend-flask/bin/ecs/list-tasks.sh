#!/usr/bin/bash

aws ecs list-tasks --cluster cruddur --desired-status STOPPED