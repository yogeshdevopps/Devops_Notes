#!/bin/bash
echo "please enter service_tag"
read service_tag
echo "please enter location of the box in Row- Cab- RU-() format"
read location
echo "Please enter the model no of the box"
read model
#echo "$service_tag and $location"
echo "
subject -: Severity 1 : Confluence Networks : Power Drain (S/T :-$service_tag )

Hi Team,
 
1. Location: $location
2. S/T: $service_tag
3. Model No : $model 

Please power drain the above mentioned server.

Kindly check the service tag first before proceeding.

Please follow the steps below for  Power   Drain  :

1. Power off the server
2. Detach all the power cables.
3. Press & Hold the Power Button for 30 Secs. & wait for 5 minutes.
4. Attach the cables firmly back in place.
5. Please make sure the power cables are firmly inserted in both PSUs & PSU LEDs are both GREEN.
6. Power ON the server Back."
