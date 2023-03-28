<!DOCTYPE html>
<html>
<body>

<?php
$output = shell_exec('whoami');
echo "<pre>$output</pre>";
$output = shell_exec('uname -a');
echo "<pre>$output</pre>";
?> 

</body>
</html>
