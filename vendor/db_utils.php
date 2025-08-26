<?
    include "db_config.php";
     /**
     * Отбирает все темы и подтемы, связанные с ними
     * @return array
     */
    function getAllTopics(){
        global $pdo;
        $topics = $pdo->query("SELECT * FROM topics")->fetchAll(PDO::FETCH_ASSOC);
        foreach ($topics as $topic) {
            $topics_info[$topic["name"]] = 
                $pdo->query(
                    "SELECT
                    ST.name subtopic_name,
                    ST.id subtopic_id
                    FROM subtopics ST
                    WHERE ST.topic_id = $topic[id]"
                )->fetchAll(PDO::FETCH_ASSOC);
        }
        return $topics_info;
    }
    
     /**
     * Отбирает выбранную подтему
     * @param int $id id подтемы
     * @return array
     */
    function getSubtopic(int $id) {
        global $pdo;
        $currentTopic = 
            $pdo->query(
                "SELECT
                ST.name subtopic_name,
                ST.text subtopic_text,
                T.name topic_name
                FROM 
                subtopics ST,
                topics T
                WHERE 
                ST.id = $id
                AND ST.topic_id = T.id"
            )->fetch(PDO::FETCH_ASSOC);
        return $currentTopic;
    }
?>