# Advent of SQL 2024 🎄

An advent calendar for all SQL enthusiasts: SQL Advent Calendar [https://www.sqlcalendar.com/app/advent-calendar](https://www.sqlcalendar.com/app/advent-calendar).

This project showcases my participation in the SQL Advent Calendar challenge, where I solved one SQL task each day throughout December. The tasks varied in difficulty, ranging from beginner to advanced, covering a wide range of SQL concepts and techniques.

The challenge provided an excellent opportunity to:

Reinforce my knowledge: It helped me solidify the skills I gained during my courses, especially in advanced topics such as joining multiple tables, Common Table Expressions (CTEs), and window functions.
Learn new concepts: Each task introduced unique problems, which allowed me to expand my understanding of SQL and apply it in practical scenarios.
Have fun: The engaging and creative nature of the tasks made learning SQL an enjoyable experience.
This repository includes:

Daily Solutions: SQL scripts (day_01.sql, day_02.sql, etc.) containing my solutions to each challenge.
Datasets: Supporting datasets for each task, stored in the dataset/ folder.
Summary Table: A detailed overview of the tasks, highlighting the concepts and techniques practiced each day (see below).
Feel free to explore the repository, review the solutions, and use it as inspiration for your own SQL learning journey!

## Calendar

| Day   | Dataset                                      | Summary                                                     | Important Functions                    |
|-------|----------------------------------------------|-------------------------------------------------------------|----------------------------------------|
| [Day 1](day_01.sql)  | [dataset-01](dateset/day_01_dataset.sql)  | Practice grouping data, counting distinct values, and filtering aggregated results using HAVING     | `DISTINCT`, `COUNT`, `GROUP BY`, `HAVING`          |
| [Day 2](day_02.sql)  | [dataset_02](dateset/day_02_dataset.sql)  | Practice on how to work with JSON data in SQL              | `json ->>`, `JSON_ARRAY_LENGTH()`, `JOIN` |
| [Day 3](day_03.sql)  | [dataset_03](dateset/day_03_dataset.sql)  | Practice ASCII encoding and character decoding             | `ASCII()`, `CHR()`, `STRING_AGG()`     |
| [Day 4](day_04.sql)  | [dataset_04](dateset/day_04_dataset.sql)  | Explore XML parsing and handling arrays                    | `xml XPATH()`, `UNNEST()`              |
| [Day 5](day_05.sql)  | [dataset_05](dateset/day_05_dataset.sql)  | Advanced filtering with subqueries                         | `WHERE EXISTS`, `IN`, `NOT IN`         |
| [Day 6](day_06.sql)  | [dataset_06](dateset/day_06_dataset.sql)  | Using window functions for ranking                         | `ROW_NUMBER()`, `RANK()`, `NTILE()`    |
| [Day 7](day_07.sql)  | [dataset_07](dateset/day_07_dataset.sql)  | Aggregations with grouping sets                            | `GROUPING SETS`, `CUBE`, `ROLLUP`      |
| [Day 8](day_08.sql)  | [dataset_08](dateset/day_08_dataset.sql)  | Recursive queries and common table expressions             | `WITH RECURSIVE`, `CTE`                |
| [Day 9](day_09.sql)  | [dataset_09](dateset/day_09_dataset.sql)  | Optimizing queries with indexes                            | `CREATE INDEX`, `EXPLAIN`              |
| [Day 10](day_10.sql) | [dataset_10](dateset/day_10_dataset.sql) | Exploring temporal data types                              | `DATE`, `TIMESTAMP`, `INTERVAL`        |
| [Day 11](day_11.sql) | [dataset_11](dateset/day_11_dataset.sql) | Manipulating string data                                   | `SUBSTRING()`, `CONCAT()`, `TRIM()`    |
| [Day 12](day_12.sql) | [dataset_12](dateset/day_12_dataset.sql) | Advanced JSON processing                                   | `jsonb_path_query()`, `jsonb_set()`    |
| [Day 13](day_13.sql) | [dataset_13](dateset/day_13_dataset.sql) | Analyzing geospatial data                                 | `PostGIS`, `ST_Distance()`, `ST_Within()` |
| [Day 14](day_14.sql) | [dataset_14](dateset/day_14_dataset.sql) | Advanced date functions                                   | `DATE_PART()`, `AGE()`, `TO_DATE()`    |
| [Day 15](day_15.sql) | [dataset_15](dateset/day_15_dataset.sql) | Pivot tables with conditional aggregation                 | `CASE`, `FILTER`, `PIVOT`              |
| [Day 16](day_16.sql) | [dataset_16](dateset/day_16_dataset.sql) | Exploring stored procedures                               | `CREATE FUNCTION`, `RETURNS`           |
| [Day 17](day_17.sql) | [dataset_17](dateset/day_17_dataset.sql) | Working with hierarchical data                           | `CONNECT BY`, `LEVEL`                  |
| [Day 18](day_18.sql) | [dataset_18](dateset/day_18_dataset.sql) | Using advanced joins                                     | `FULL OUTER JOIN`, `CROSS JOIN`        |
| [Day 19](day_19.sql) | [dataset_19](dateset/day_19_dataset.sql) | Querying metadata tables                                 | `information_schema`, `pg_catalog`     |
| [Day 20](day_20.sql) | [dataset_20](dateset/day_20_dataset.sql) | Performance tuning                                       | `VACUUM`, `ANALYZE`, `CLUSTER`         |
| [Day 21](day_21.sql) | [dataset_21](dateset/day_21_dataset.sql) | Advanced use of window functions                         | `LAG()`, `LEAD()`, `FIRST_VALUE()`     |
| [Day 22](day_22_dataset.sql) | [dataset_22](dateset/day_22_dataset.sql) | Data validation techniques                               | `CHECK`, `ASSERT`, `CONSTRAINT`        |
| [Day 23](day_23.sql) | [dataset_23](dateset/day_23_dataset.sql) | Exploring advanced indexing                              | `GIN`, `BRIN`, `HASH INDEX`            |
| [Day 24](day_24.sql) | [dataset_24](dateset/day_24_dataset.sql) | Final challenge combining advanced concepts              | `ALL FUNCTIONS ABOVE`                  |




