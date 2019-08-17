SELECT 
   AVG(marks.mark) AS "average mark",
   student.group
FROM marks
JOIN student ON student.student_id = marks.student_id
WHERE marks.subject = "java"
GROUP BY student.group;