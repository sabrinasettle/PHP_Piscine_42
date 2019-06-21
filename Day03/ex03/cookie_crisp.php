<?php

if (isset($_GET["action"]) && isset($_GET["name"]))
{
	if ($_GET["action"] == "del")
		setcookie($_GET["name"], '', 1);
	else if ($_GET["action"] == "set")
		setcookie($_GET['name'], $_GET['value']);
	else if ($_GET["action"] == "get")
	{
		echo($_COOKIE[$_GET["name"]]);
		echo("\n");
	}
}


// based off the logic that when you create a cookie you call a action with a name which gets/sets/del
// a cookie depending on what is nesscary.The del fun 's 1 is set in the past effectively deleting the cookie

// curl -c cook.txt 'http://localhost:8100/ex03/cookie_crisp.php?action=set&name=plat&value=choucroute'
// curl -b cook.txt 'http://localhost:8100/ex03/cookie_crisp.php?action=get&name=plat'

// curl -c cook.txt 'http://localhost:8100/ex03/cookie_crisp.php?action=del&name=plat'
// curl -b cook.txt 'http://localhost:8100/ex03/cookie_crisp.php?action=get&name=plat'
