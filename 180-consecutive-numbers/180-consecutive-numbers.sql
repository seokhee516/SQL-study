-- 대박쓰 연속적으로 조회하는 방법!!
select distinct Num as ConsecutiveNums -- 있으면 distinct로 뽑아내셈
from Logs
where (Id + 1, Num) in (select * from Logs) -- id 값보다 1 더 큰거 있음? 
    and (Id + 2, Num) in (select * from Logs)-- id 값보다 2 더 큰거 있음?
    -- 둘다 체크하면 연속 3개 확인 완료!