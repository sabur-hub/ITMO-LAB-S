-- 2.
-- Сделать запрос для получения атрибутов из указанных таблиц,
-- применив фильтры по указанным условиям:
-- Таблицы: Н_ЛЮДИ, Н_ОБУЧЕНИЯ, Н_УЧЕНИКИ.
-- Вывести атрибуты: Н_ЛЮДИ.ИМЯ, Н_ОБУЧЕНИЯ.ЧЛВК_ИД, Н_УЧЕНИКИ.ИД.
-- Фильтры: (AND)
-- a) Н_ЛЮДИ.ИМЯ < Александр.
-- b) Н_ОБУЧЕНИЯ.ЧЛВК_ИД > 163276.
-- c) Н_УЧЕНИКИ.ГРУППА = 3100.
-- Вид соединения: INNER JOIN.

SELECT "Н_ЛЮДИ"."ИМЯ", "Н_ОБУЧЕНИЯ"."ЧЛВК_ИД", "Н_УЧЕНИКИ"."ИД"
FROM "Н_ЛЮДИ"
  JOIN "Н_ОБУЧЕНИЯ" ON "Н_ОБУЧЕНИЯ"."ЧЛВК_ИД" = "Н_ЛЮДИ"."ИД"
  JOIN "Н_УЧЕНИКИ" ON "Н_УЧЕНИКИ"."ЧЛВК_ИД" = "Н_ЛЮДИ"."ИД"
WHERE "Н_ЛЮДИ"."ИМЯ" < 'Александр'
  AND "Н_ОБУЧЕНИЯ"."ЧЛВК_ИД" > 163276
  AND "Н_УЧЕНИКИ"."ГРУППА" = '3100';

