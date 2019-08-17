SELECT 
   marks.student_id,
   student.name
FROM marks
JOIN student ON student.student_id = marks.student_id
WHERE marks.mark = 2
GROUP BY marks.student_id
HAVING COUNT(marks.mark) = 2;