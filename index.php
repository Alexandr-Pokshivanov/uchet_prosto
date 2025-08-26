
<?

require_once "layouts/layout.php";
$subtopicId = $_GET["id"] ?? 1;
$topics = getAllTopics();
$subtopic = getSubtopic($subtopicId);
?>
<div class="content-wrapper">
    <div class="panel side-menu">
        <? foreach ($topics as $menu_topic => $subtopics_menu) { ?>
            <div>
                <p class="<?= $menu_topic != $subtopic["topic_name"] ?: 'selected' ?>"> <?= $menu_topic ?> </p>
                <ul class="topic-list">
                    <? foreach ($subtopics_menu as $subtopic_menu) { ?> 
                        <li class="subtopic-item">
                            <a 
                                href="subtopic.php?id=<?= $subtopic_menu["subtopic_id"] ?>"
                                class="<?= $subtopic_menu["subtopic_id"] != $subtopicId ?: 'selected' ?>"
                            > 
                                <?= $subtopic_menu["subtopic_name"]  ?> 
                            </a>
                        </li>
                    <? } ?> 
                </ul>
            </div>
        <? } ?>
    </div>
    <div class="panel subtopic-block">
        <div class="subtopic-head">
            <h1> <?= $subtopic["topic_name"] ?> </h1>
        </div>
        <div class="subtopic-body">
            <h2> <?= $subtopic["subtopic_name"] ?> </h2>
            <p> <?= $subtopic["subtopic_text"] ?> </p>
        </div>
    </div>
</div>