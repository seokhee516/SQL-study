-- 2개 이상의 국적 찾는것이 어려웠다. 
-- HAVING COUNT DISTINCT 사용!
SELECT a.name
FROM records r LEFT JOIN teams t ON r.team_id = t.id
               LEFT JOIN athletes a ON r.athlete_id = a.id
               LEFT JOIN games g ON r.game_id = g.id
WHERE g.year >= 2000 and r.medal IS NOT NULL
GROUP BY r.athlete_id
HAVING COUNT(DISTINCT t.team) > 1
ORDER BY a.name
