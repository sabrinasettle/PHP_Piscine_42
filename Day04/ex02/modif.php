<?php
	$path = '../private';
	$file_path = $path . '/passwd';
    if ($_POST['login'] && $_POST['oldpw'] && $_POST['newpw'] && $_POST['submit'] === "OK") {
        $acc_info = unserialize(file_get_contents($file_path));
        if ($acc_info) {
            $info_exists = 0;
            foreach ($acc_info as $f => $s) {
                if ($s['login'] === $_POST['login'] && $s['passwd'] === hash('whirlpool', $_POST['oldpw'])) {
                    $info_exists = 1;
                    $acc_info[$f]['passwd'] =  hash('whirlpool', $_POST['newpw']);
                }
            }
            if ($info_exists) {
                file_put_contents($file_path, serialize($acc_info));
                echo "OK\n";
            } else {
                echo "ERROR\n";
            }
        } else {
            echo "ERROR\n";
        }
    } else {
        echo "ERROR\n";
    }
?>
