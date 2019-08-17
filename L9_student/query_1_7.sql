SELECT 
   marks.student_id,
   student.name,
   COUNT(marks.mark) as "number of marks"
FROM marks
JOIN student ON student.student_id = marks.student_id
GROUP BY marks.student_id;