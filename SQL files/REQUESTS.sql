SELECT "ФАМИЛИЯ", "ДАТА_РОЖДЕНИЯ"
FROM "ПАЦИЕНТ"
WHERE "РЕГИСТРАЦИОННЫЙ_НОМЕР" IN (
    SELECT "РЕГИСТРАЦИОННЫЙ_НОМЕР"
    FROM "РАЗМЕЩЕНИЕ"
    WHERE "КОД_БОЛЬНИЦЫ" = 1
);

SELECT *
FROM "ПАЦИЕНТ"
WHERE "ФАМИЛИЯ" = 'Иванов';

SELECT "ФАМИЛИЯ", "СПЕЦИАЛЬНОСТЬ"
FROM "ВРАЧ";

SELECT "НОМЕР_ПАЛАТЫ", COUNT(*) AS "КОЛИЧЕСТВО_ПАЦИЕНТОВ"
FROM "РАЗМЕЩЕНИЕ"
GROUP BY "НОМЕР_ПАЛАТЫ";

SELECT AVG("ЗАРПЛАТА") AS "СРЕДНЯЯ_ЗАРПЛАТА"
FROM "ПЕРСОНАЛ";

SELECT "НАЗВАНИЕ", "АДРЕС"
FROM "ЛАБОРАТОРИЯ";

SELECT "ТИП_АНАЛИЗА", "НАЗНАЧЕННАЯ_ДАТА"
FROM "АНАЛИЗ"
WHERE "НОМЕР_НАПРАВЛЕНИЯ" = 12345;
