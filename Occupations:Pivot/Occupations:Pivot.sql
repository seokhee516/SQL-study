SELECT  Max(CASE WHEN Occupation = "Doctor" THEN Name ELSE null END) AS Doctor
    ,  Max(CASE WHEN Occupation = "Professor" THEN Name ELSE null END) AS Professor
    ,  Max(CASE WHEN Occupation = "Singer" THEN Name ELSE null END) AS Singer
    ,  Max(CASE WHEN Occupation = "Actor" THEN Name ELSE null END) AS Actor
FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) RN
      FROM OCCUPATIONS) TEMP
GROUP BY RN
