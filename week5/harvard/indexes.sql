-- Delete indexes if they exist in case of changes
DROP INDEX IF EXISTS "search_course_id_by_student_id";
DROP INDEX IF EXISTS "search_student_id_by_course_id";
DROP INDEX IF EXISTS "search_courses_by_sem_dept_nos";
DROP INDEX IF EXISTS "search_courses_by_semester";
DROP INDEX IF EXISTS "search_courses_by_semester_department";
DROP INDEX IF EXISTS "search_requirement_id_by_course_id";
DROP INDEX IF EXISTS "search_courses_by_sem_title";



--Create indexes required for the database
CREATE INDEX "search_course_id_by_student_id" ON "enrollments"("student_id");
CREATE INDEX "search_student_id_by_course_id" ON "enrollments"("course_id");

CREATE INDEX "search_courses_by_sem_dept_nos" ON "courses"("semester", "department", "number");
CREATE INDEX "search_courses_by_semester" ON "courses"("semester"); 
CREATE INDEX "search_courses_by_semester_department" ON "courses"("semester", "department");

CREATE INDEX "search_requirement_id_by_course_id" ON "satisfies"("course_id");
CREATE INDEX "search_courses_by_sem_title" ON "courses"("semester", "title");

