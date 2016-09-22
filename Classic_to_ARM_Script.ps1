#Sign in to your account for the Resource Manager model.
Login-AzureRmAccount

#Set your Azure subscription for the current session
$subID=Get-AzureRmSubscription|Select-AzureRmSubscription


#Register with the migration resource provider.
Register-AzureRmResourceProvider -ProviderNamespace Microsoft.ClassicInfrastructureMigrate

#check the registration
Get-AzureRmResourceProvider -ProviderNamespace Microsoft.ClassicInfrastructureMigrate

#sign in the classic model
Add-AzureAccount

#Set your Azure subscription for the current session
$subID=Get-AzureRmSubscription|Select-AzureRmSubscription

#Prepare the virtual network for migration
$vnetName = "VNET001"
Move-AzureVirtualNetwork -Prepare -VirtualNetworkName $vnetName

#Commit the migration
Move-AzureVirtualNetwork -Commit -VirtualNetworkName $vnetName


