###########################################################
# Author: Dennis Perrone
# Date Created: 20191105
# Purpose: To demostrate a simple PowerShell script that
#          takes user input and checks that firewall ports
#          are open.
###########################################################

function ping-test{

$desthost = Read-Host 'What is the destination address?'
$destport = Read-Host 'What port is being checked?'

Test-NetConnection -InformationLevel "Detailed" -Port $destport -ComputerName $desthost | Select ComputerName, TcpTestSucceeded

}

ping-test
