param($network, $dnsServer)

for($i=1; $i -lt 255; $i++)
{
    $ip=echo $network$i
    $name=Resolve-DnsName -DnsOnly $ip -Server $dnsServer -ErrorAction Ignore | Select Name
    $var=echo $name.Name
    if ($var -is [string])
    {
        if ($var.Contains("addr"))
        {
            echo "$ip $var"
        }
    }
}