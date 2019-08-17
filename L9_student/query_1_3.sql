SELECT student.name, marks.subject, marks.mark
FROM marks
JOIN student ON student.student_id = marks.student_id
WHERE subject = "java"; 