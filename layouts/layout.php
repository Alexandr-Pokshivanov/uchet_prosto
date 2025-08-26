<? require_once "vendor/db_utils.php"; ?>
<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="layouts/style.css">
        <title>Тестовое задание</title>
    </head>
    <body>
        <div class="panel content">
            <?
                include ".$_SERVER[PHP_SELF]";
            ?>
        </div>
    </body>
</html>
<?
exit;