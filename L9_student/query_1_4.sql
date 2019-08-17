SELECT marks.student_id, student.name, AVG(marks.mark) as "average mark"
FROM marks
JOIN student ON student.student_id = marks.student_id
WHERE marks.student_id = 101;