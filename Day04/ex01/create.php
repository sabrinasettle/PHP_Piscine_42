<?php
	$path = "../private";
	$file_path = $path . "/passwd";
    if ($_POST['login'] && $_POST['passwd'] && $_POST['submit'] === "OK") {
        if (!file_exists($path) && !mkdir($path))
			exit();
		if (!file_exists($file_path))
			file_put_contents($file_path, null);
        $acc_arr = unserialize(file_get_contents($file_path));
        if ($acc_arr) {
            $info_exists = 0;
            foreach ($acc_arr as $f => $s) {
                if ($s['login'] === $_POST['login'])
                    $info_exists = 1;
            }
        }
        if ($info_exists) {
            echo "ERROR\n";
        } else {
            $arr['login'] = $_POST['login'];
            $arr['passwd'] = hash('whirlpool', $_POST['passwd']);
            $acc_arr[] = $arr;
            file_put_contents($file_path, serialize($acc_arr));
            echo "OK\n";
        }
	}else{
		echo "ERROR\n";
	}
?>
