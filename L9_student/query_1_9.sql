SELECT DISTINCT
   marks.subject,
   COUNT(marks.mark) as "Number of '2' mark"
FROM marks
WHERE marks.mark = 2
GROUP BY marks.subject
HAVING COUNT(marks.mark) > 2;