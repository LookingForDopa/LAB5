INSERT INTO students (surname, name, father_name, group_id)
SELECT 'Айсен', 'Ермолаев', 'Айалович', id FROM groups_ WHERE short_name = 'Б-ИВТ-25-1'
UNION ALL
SELECT 'Кирилл', 'Петров', NULL, id FROM groups_ WHERE short_name = 'Б-ИВТ-25-1'
UNION ALL
SELECT 'Вavwr', 'avwra', 'avsfas', id FROM groups_ WHERE short_name = 'Б-ИВТ-25-1';
SELECT * FROM institutes;
SELECT g.short_name, g.name, g.year, i.name AS institute_name
FROM groups_ g
INNER JOIN institutes i ON g.institute_id = i.id;
SELECT s.surname, s.name, s.father_name, g.short_name AS group_code, i.name AS institute_name
FROM students s
INNER JOIN groups_ g ON s.group_id = g.id
INNER JOIN institutes i ON g.institute_id = i.id;
