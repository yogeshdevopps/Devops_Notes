#!/bin/bash
echo "please enter service_tag"
read service_tag
echo "please enter location of the box in Row- Cab- RU-() format"
read location
echo "Please enter the model no of the box"
read model
#echo "$service_tag and $location"

echo "
Severity 1: Confluence Networks: iDRAC Link and Power Status (S/T: $service_tag)

Hi Team,

We are not able to access iDRAC, please do the following

1) Check the iDrac link and let us know the LED status.
2) Check physical connectivity from the server idrac port to switch port end.
3) Share the name of the switch and it's port where the iDRAC link is connected.
4) Share the power state of the server.

Server Location-: $location

Service Tag-: $service_tag

Model No-: $model

Note-:Kindly check the service tag first before proceeding."
