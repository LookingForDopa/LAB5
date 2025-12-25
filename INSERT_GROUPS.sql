INSERT INTO institutes (name) VALUES (name 'ИМИ');
INSERT INTO groups_ (name, short_name, year, institute_id)
SELECT 'Информатика и вычислительная техника', 'Б-ИВТ-25-1', 2025, id
FROM institutes
WHERE name = 'ИМИ'
UNION ALL
SELECT 'Информатика и вычислительная техника', 'Б-ИВТ-25-2', 2025, id
FROM institutes
WHERE name = 'ИМИ'
UNION ALL
SELECT 'Фундаментальная информатика и информационные технологии', 'Б-ФИИТ-25', 2025, id
FROM institutes
WHERE name = 'ИМИ'
UNION ALL
SELECT 'Прикладная информатика', 'Б-ПИ-25-1', 2025, id
FROM institutes
WHERE name = 'ИМИ';
