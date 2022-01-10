--1. Вывести количество преподавателей кафедры “Software Development”.
--SELECT Departments.Name AS 'Кафедры', COUNT(Teachers.Id) AS 'Количество'
--    FROM Departments, Faculties, Groups, GroupsLectures, Lectures, Teachers
--    WHERE(Departments.FacultyId = Faculties.Id AND
--		Departments.Id = Groups.DepartmentId AND
--		Groups.Id = GroupsLectures.GroupId AND
--		GroupsLectures.LectureId = Lectures.Id AND
--		Lectures.TeacherId = Teachers.Id AND
--		Departments.Name = 'Software Development')
--		Group by Teachers.Id, Departments.Name

--2. Вывести количество лекций, которые читает преподаватель “Dave McQueen”.
 --SELECT Teachers.Name + ' ' + Teachers.Surname AS 'Преподаватель', COUNT(Lectures.TeacherId) AS 'Количество лекций'
 --   FROM Teachers, Lectures
 --   WHERE(Teachers.Id = Lectures.TeacherId AND
	--	Teachers.Name = 'Dave' AND
	--	Teachers.Surname = 'McQueen')
	--	Group by Teachers.Id, Teachers.Name, Teachers.Surname

--3. Вывести количество занятий, проводимых в аудитории “D201”.
 --SELECT Lectures.LectureRoom AS 'Аудитория', COUNT(Lectures.Id) AS 'Количество занятий'
 --   FROM Lectures
 --   WHERE(Lectures.LectureRoom = 'D201')
	--	Group by Lectures.LectureRoom

--4. Вывести названия аудиторий и количество лекций, проводимых в них.
	 --SELECT Lectures.LectureRoom AS 'Аудитория', COUNT(Lectures.Id) AS 'Количество лекций'
  --   FROM Lectures
	 --Group by Lectures.LectureRoom

--5. Вывести количество студентов, посещающих лекции преподавателя “Jack Underhill”.
-- в условии нет студентов

--6. Вывести среднюю ставку преподавателей факультета “Computer Science”.
--SELECT  Faculties.Name AS 'Факультет', AVG(Teachers.Salary) AS 'Средняя зп преподавателей'
--FROM Departments, Faculties, Teachers, Groups, GroupsLectures, Lectures
--WHERE (Departments.Id = Groups.DepartmentId AND
--		Departments.FacultyId = Faculties.Id AND
--        GroupsLectures.GroupId = Groups.Id AND
--        GroupsLectures.LectureId = Lectures.Id AND
--        Teachers.Id = Lectures.TeacherId AND
--		Faculties.Name = 'Computer Science')
--GROUP BY Faculties.Name 

--7. Вывести минимальное и максимальное количество студентов среди всех групп.
-- в условии нет студентов

--8. Вывести средний фонд финансирования кафедр.
--SELECT  Departments.Name AS 'Кафедра', AVG(Departments.Financing) AS 'Cредний фонд финансирования'
--FROM Departments
--GROUP BY Departments.Name 

--9. Вывести полные имена преподавателей и количество читаемых ими дисциплин.
--SELECT  Teachers.Name +' ' + Teachers.Surname AS 'Преподаватель', AVG(Subjects.Id) AS 'Количество читаемых дисциплин'
--FROM Teachers, Lectures, Subjects
--WHERE(Teachers.Id = Lectures.TeacherId AND Lectures.SubjectId = Subjects.Id)
--GROUP BY Teachers.Name, Teachers.Surname 

--10. Вывести количество лекций в каждый день недели.
--SELECT Lectures.DayOfWeek AS 'День недели', COUNT(Lectures.DayOfWeek) AS 'Количество лекций'
--FROM Lectures 
--GROUP BY Lectures.DayOfWeek

--11. Вывести номера аудиторий и количество кафедр, чьи лекции в них читаются.
--SELECT Lectures.LectureRoom AS 'АУДИТОРИЯ', COUNT(Lectures.Id) AS 'Количество лекций'
--FROM  Lectures, GroupsLectures, Groups, Departments
--WHERE( Departments.Id = Groups.DepartmentId AND GroupsLectures.GroupId = Groups.Id AND GroupsLectures.LectureId = Lectures.Id)
--GROUP BY Lectures.LectureRoom

--12. Вывести названия факультетов и количество дисциплин, которые на них читаются.
--SELECT Faculties.Name 'Названия факультетов', Count(Subjects.Id) AS 'Количество дисциплин'
--FROM Departments, Faculties, Groups, GroupsLectures, Lectures, Subjects
--WHERE(Faculties.Id = Departments.FacultyId AND
--		Departments.Id = Groups.DepartmentId AND
--		Groups.Id = GroupsLectures.GroupId AND
--		GroupsLectures.LectureId = Lectures.Id AND
--		Lectures.SubjectId = Subjects.Id )
--GROUP BY Faculties.Name, Subjects.Id

--13. Вывести количество лекций для каждой пары преподаватель-аудитория.
--SELECT Lectures.LectureRoom AS 'Аудитория', Teachers.Name AS 'Преподаватель', Count(Lectures.Id) AS 'Количество лекций'
--FROM Lectures, Teachers
--WHERE(Teachers.Id = Lectures.TeacherId)
--GROUP BY Lectures.LectureRoom, Teachers.Name, Teachers.Id, Lectures.TeacherId