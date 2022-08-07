# Write your MySQL query statement below
# sql로 트리노드 만들기 신기하당
SELECT id,
    CASE
        WHEN p_id IS NULL THEN 'Root' # 부모노드가 없으면 루트노드
        WHEN id IN (SELECT p_id FROM Tree) THEN 'Inner'
        ELSE 'Leaf'
        END AS type # 마무리 컬럼 이름~
    FROM Tree