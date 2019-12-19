#!/bin/bash

# Update the following variables for your own settings:
resourceGroup=azureCDNSetup
resourceGroupLocation=westus
cdnProfileLocation=westus
cdnEndPointLocation=westus
profileName=exampleProfileName
endPointName=exampleEndPointName
pricingTier=Standard_Microsoft #Custom_Verizon, Premium_Verizon, Standard_Akamai, Standard_ChinaCdn, Standard_Microsoft, Standard_Verizon
origin=jsonplaceholder.typicode.com
originHostHeader=jsonplaceholder.typicode.com
originPath=/posts # /posts/id

# create resource gorup or ignore if already exists.
az group create \
	-l $resourceGroupLocation \
	-n $resourceGroup
	
# create cdn profile
az cdn profile create \
	-l $cdnProfileLocation \
	-g $resourceGroup \
	-n $profileName \
	--sku $pricingTier

# create cdn endpoint
az cdn endpoint create \
	-g $resourceGroup \
	-l $cdnEndPointLocation \
	-n $endPointName \
	--profile-name $profileName \
	--origin $origin \
	--origin-host-header $originHostHeader \
	--origin-path $originPath
