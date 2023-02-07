param($network, $dnsServer)

for($i=1; $i -lt 255; $i++)
{
    $ip=echo $network$i
    $name=Resolve-DnsName -DnsOnly $ip -Server $dnsServer -ErrorAction Ignore | Select NameHost
    $var=echo $name.NameHost
    if ($var -is [string])
    {
        echo "$ip $var"
    }
}