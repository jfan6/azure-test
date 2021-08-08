Import-Module Az.Compute

$VbaVms = Get-AzVm -Name "VBA*"
$VbaNames = (Get-AzVm -Name "VBA*").Name
$VbaRg = (Get-AzResourceGroup -Name infra-rg).ResourceGroupName

if ($VbaVms -ne $null) {
    foreach ($Vm in $VbaVms) {
        Get-AzVM -Name "$Vm" -Status
    }
}