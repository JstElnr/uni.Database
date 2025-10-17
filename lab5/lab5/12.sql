SELECT *
FROM librarians
WHERE commission=(SELECT MAX(commission) FROM librarians);