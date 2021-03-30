
# declaring a variable
$rg="arm-rg2"

#Creating a resource group in southeastasia
New-AzResourceGroup -Name $rg -Location "west us" -Force

# New Resource Deployment
New-AzResourceGroupDeployment -Name 'logic_app_preview' -ResourceGroupName $rg -TemplateFile 'template.json' -TemplateParameterFile 'template.parameters.json'
