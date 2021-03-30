
# declaring a variable
$rg="arm-rg"

#Creating a resource group in southeastasia
New-AzResourceGroup -Name $rg -Location "west us" -Force

# New Resource Deployment
New-AzResourceGroupDeployment -Name 'vnet_deployment' -ResourceGroupName $rg -TemplateFile 'template.json' -TemplateParameterFile 'template.parameters.json'

# to deploy the resource, go to the specified directory and run this powershell script.
