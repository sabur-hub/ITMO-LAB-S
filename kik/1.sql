-- 1.
-- Сделать запрос для получения атрибутов из указанных таблиц,
-- применив фильтры по указанным условиям:
-- Н_ТИПЫ_ВЕДОМОСТЕЙ, Н_ВЕДОМОСТИ.
-- Вывести атрибуты: Н_ТИПЫ_ВЕДОМОСТЕЙ.НАИМЕНОВАНИЕ, Н_ВЕДОМОСТИ.ДАТА.
-- Фильтры (AND):
-- a) Н_ТИПЫ_ВЕДОМОСТЕЙ.НАИМЕНОВАНИЕ = Ведомость.
-- b) Н_ВЕДОМОСТИ.ЧЛВК_ИД > 163249.
-- Вид соединения: RIGHT JOIN.

SELECT "Н_ТИПЫ_ВЕДОМОСТЕЙ"."НАИМЕНОВАНИЕ", "Н_ВЕДОМОСТИ"."ДАТА"
FROM "Н_ВЕДОМОСТИ"
  RIGHT JOIN "Н_ТИПЫ_ВЕДОМОСТЕЙ" ON "Н_ВЕДОМОСТИ"."ВЕД_ИД" = "Н_ТИПЫ_ВЕДОМОСТЕЙ"."ИД"
WHERE "Н_ТИПЫ_ВЕДОМОСТЕЙ"."НАИМЕНОВАНИЕ" = 'Ведомость'
  AND "Н_ВЕДОМОСТИ"."ЧЛВК_ИД" > 163249;
