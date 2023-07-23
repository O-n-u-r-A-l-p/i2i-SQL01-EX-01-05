SELECT
  SUBSTR(first_name, 1, 2) || RPAD('*', LENGTH(first_name) - 2, '*') AS masked_first_name,
  SUBSTR(last_name, 1, 2) || RPAD('*', LENGTH(last_name) - 2, '*') AS masked_last_name
FROM
  employees;