<?php

/*echo shell_exec('sh /root/databackup.sh');*/

$contents = file_get_contents('/root/datatos3.sh');
echo shell_exec($contents);

?>