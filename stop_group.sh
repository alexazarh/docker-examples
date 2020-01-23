#!/bin/bash

time for i in {0..4};do

    time for j in {1..3};do
      
      docker stop $CONTAINER_GROUP_NAME-r$j-sw$i
      
    done
    
done
