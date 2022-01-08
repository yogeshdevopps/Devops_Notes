#!/bin/bash
echo "please enter service_tag"
read service_tag
echo "please enter location of the box in Row- Cab- RU-() format"
read location
echo "Please enter the model no of the box"
read model
echo "How much number of disks need to add ?"
read disk
echo "what is the disk size and type ? e.x(16 TB SAS HDD)"
read disk_type
echo "enter emply slots (1,2,3,4)"
read slots

echo "
Subject :Severity 2 : Confluence Networks : add spare $disk x $disk_type server (S/T:$service_tag )

Hello Team,

Kindly add spare  $disk x $disk_type TB SAS HDD on below mentioned server empty disk Slot ($slots)

Server Location-: $location
Service Tag-: $service_tag
Model-:	$model

Kindly check the service tag first before proceeding."
