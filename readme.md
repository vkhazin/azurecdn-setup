# Azure CDN Setup

## Overview

* Create a Azure CDN in front of a restful end-point
* Document manual setup
* Create script using [azure cli](https://docs.microsoft.com/en-us/cli/azure/?view=azure-cli-latest) to automate the setup with relevant parameters passed as arguments
* 

## Deliverables

* End-point to use for CDN origin: https://jsonplaceholder.typicode.com/posts/1
* Document setup using markdown with snapshot of steps taken
* Deliver script with input parameters - nothing hard-coded in the script

---------------------------------------------------------------------------------------------------------------------------------------

# Azure CDN Setup - Manual Steps

### Go to CDN Profiles [Azure Portal](https://portal.azure.com/)
![](https://github.com/MuddassirNayyer/azurecdn-setup/blob/master/Images/az1.PNG)

### Add CDN Profile
![](https://github.com/MuddassirNayyer/azurecdn-setup/blob/master/Images/az2.PNG)

### Create CDN Profile and CDN EndPoint
![](https://github.com/MuddassirNayyer/azurecdn-setup/blob/master/Images/az3.PNG)

#### Note: Wait for some minutes to let Azure configure completely setup the endpoint and make it available

### Go to the EndPoint and find the CDN EndPoint URL
![](https://github.com/MuddassirNayyer/azurecdn-setup/blob/master/Images/az4.PNG)

---------------------------------------------------------------------------------------------------------------------------------------

# Azure CDN Setup - Script

#### Copy and Paste the [script](https://github.com/MuddassirNayyer/azurecdn-setup/blob/master/cdnSetup.sh) inside Azure CLI
