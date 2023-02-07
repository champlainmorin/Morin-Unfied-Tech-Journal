# Code by Zachary Morin, dnsResolver written in Powershell.

param($network, $dnsServer)

for($i=1; $i -lt 255; $i++)
{
    $ip=echo $network$i
    $name=Resolve-DnsName -DnsOnly $ip -Server $dnsServer -ErrorAction Ignore | Select Name
    echo $ip $name.Name
}