SELECT 
    AVG(marks.mark) AS 'average mark',
    marks.subject,
    COUNT(marks.student_id) AS 'students total'
FROM
    marks
GROUP BY marks.subject;