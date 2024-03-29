-- 3.
-- Вывести число фамилий без учета повторений.
-- При составлении запроса нельзя использовать DISTINCT.

SELECT count("ФАМИЛИЯ") FROM 
	(SELECT "Н_ЛЮДИ"."ФАМИЛИЯ" AS "ФАМИЛИЯ"
		FROM "Н_ЛЮДИ" 
		GROUP BY "Н_ЛЮДИ"."ФАМИЛИЯ") 
AS "Число фамилий без повторений";

-- Проверка: SELECT COUNT(DISTINCT "Н_ЛЮДИ"."ФАМИЛИЯ") FROM "Н_ЛЮДИ";

