CREATE TABLE cathedrals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    chief VARCHAR(100) NOT NULL
);
ALTER TABLE groups_ ADD COLUMN cathedral_id INT REFERENCES cathedrals(id);
INSERT INTO cathedrals (name, chief)
VALUES
('Кафедра информационных технологий', 'Васильева Наталья Васильевна'),
('Математическая экономика и прикладная информатика', 'Матвеева Нюргуяна Николаевна');
SELECT * FROM cathedrals;
UPDATE groups_
SET cathedral_id = c.id
FROM cathedrals c
WHERE groups_.cathedral_id IS NULL
AND c.name = 'Кафедра информационных технологий';
UPDATE groups_
SET cathedral_id = c.id
FROM cathedrals c
WHERE groups_.cathedral_id IS NULL
AND c.name = 'Математическая экономика и прикладная информатика';
SELECT g.name AS group_name, g.short_name, c.name AS cathedral_name
FROM groups_ g
INNER JOIN cathedrals c ON g.cathedral_id = c.id
WHERE c.name = 'Кафедра информационных технологий';
