#!/bin/bash

# Update the following variables for your own settings:
resourceGroup=azureCDNSetup
profileName=exampleProfileName
endPointName=exampleEndPointName
pricingTier=Standard_Microsoft #Custom_Verizon, Premium_Verizon, Standard_Akamai, Standard_ChinaCdn, Standard_Microsoft, Standard_Verizon
origin=jsonplaceholder.typicode.com
originHostHeader=jsonplaceholder.typicode.com
originPath=/ # /posts

# create resource gorup
az group create \
	-l westus \
	-n $resourceGroup
	
# create cdn profile
az cdn profile create \
    -g $resourceGroup \
    -n $profileName \
    --sku $pricingTier

# create cdn endpoint
az cdn endpoint create \
    -g $resourceGroup \
    -n $endPointName \
    --profile-name $profileName \
    --origin $origin
	--origin-host-header $originHostHeader \
	-origin-path $originPath

echo "Finisehd"