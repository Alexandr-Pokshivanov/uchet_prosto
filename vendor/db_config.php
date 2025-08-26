<?

$host = "MYSQL-8.0";
$login_db = "root";
$pass_db = "";
$name_db = "test_db";

try {
    $pdo = new PDO("mysql:host=$host; dbname=$name_db", $login_db, $pass_db, array(PDO::ATTR_PERSISTENT => true));

    $pdo->exec("set names utf8");
}

catch (PDOException $e) {
    print "ERR!: " . $e->getMessage(). "<gr>";
}

?>
<!-- SYP@Z6GFBPVEyHGQ -->