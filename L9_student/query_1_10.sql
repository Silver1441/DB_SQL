DELETE 
FROM student
WHERE student.student_id IN (
   SELECT temp_id FROM(
      SELECT student.student_id AS temp_id
      FROM student
      JOIN marks ON marks.student_id = student.student_id
      WHERE marks.mark = 2
      GROUP BY student.student_id
      HAVING COUNT(marks.mark) = 3
   ) AS temp_table
);