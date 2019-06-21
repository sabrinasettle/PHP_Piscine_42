<?php
function auth($login, $passwd)
{
	$path = '../private';
	$file_path = $path . '/passwd';
	$serialized_file = $file_path;
	$serialized_contents = @file_get_contents($serialized_file);
	if (!$serialized_contents)
		return FALSE;
	$acc_info = unserialize($serialized_contents);
	$password = hash("whirlpool", $passwd);
	foreach ($acc_info as $element)
	{
		if ($element['login'] === $login && $element['passwd'] === $password)
			return TRUE;
	}
	return FALSE;
}
