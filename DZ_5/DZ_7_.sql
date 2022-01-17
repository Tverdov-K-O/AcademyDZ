--1. Вывести названия аудиторий, в которых читает лекции преподаватель “Edward Hopper”.
--SELECT 
--	LectureRooms.Name
--FROM
--	LectureRooms
--JOIN Schedules ON Schedules.LectureRoomId = LectureRooms.Id
--JOIN Subjects ON Schedules.SubjectId = Subjects.Id
--JOIN TeacherSubjects ON TeacherSubjects.SubjectId = Schedules.SubjectId
--JOIN Teachers ON Teachers.Id = TeacherSubjects.TeacherId
--WHERE Teachers.Name = 'Edward' AND Teachers.Surname = 'Hopper'


--2. Вывести фамилии ассистентов, читающих лекции в группе “F505”.
--SELECT
--	Teachers.Surname
--FROM
--	Schedules
--JOIN Subjects ON Schedules.SubjectId = Subjects.Id
--JOIN TeacherSubjects ON TeacherSubjects.SubjectId = Subjects.Id
--JOIN Teachers ON TeacherId = TeacherSubjects.TeacherId
--JOIN Groups ON Schedules.GroupId = Groups.Id
--WHERE
--	Groups.Name = 'F505' AND Teachers.isAssistant = 1


--3. Вывести дисциплины, которые читает преподаватель “Alex Carmack” для групп 5-го курса.
--SELECT
--	Subjects.Name
--FROM
--	Subjects
--JOIN Schedules ON Schedules.SubjectId = Subjects.Id
--JOIN TeacherSubjects ON TeacherSubjects.SubjectId = Subjects.Id
--JOIN Teachers ON TeacherSubjects.TeacherId = Teachers.Id
--JOIN Groups ON Schedules.GroupId = GroupId
--WHERE
--	Teachers.Name = 'Alex' AND Teachers.Surname = 'Carmack' AND Groups.Year = 5


--4. Вывести фамилии преподавателей, которые не читают лекции по понедельникам.
--SELECT
--	Teachers.Surname
--FROM
--	Teachers
--JOIN TeacherSubjects ON TeacherSubjects.TeacherId = Teachers.Id
--JOIN Subjects ON TeacherSubjects.SubjectId = Subjects.Id
--JOIN Schedules ON Schedules.SubjectId = Subjects.Id
--JOIN Groups ON Schedules.GroupId = GroupId
--WHERE 
--	Schedules.DayOfWeek != 1


--5. Вывести названия аудиторий, с указанием их корпусов, в которых нет лекций в среду второй недели на третьейпаре.
--SELECT
--	LectureRooms.Name,
--	LectureRooms.Building
--FROM
--	LectureRooms
--JOIN Schedules ON Schedules.LectureRoomId != LectureRooms.Id
--JOIN Subjects ON Schedules.SubjectId = Subjects.Id
--JOIN TeacherSubjects ON TeacherSubjects.SubjectId = Subjects.Id
--JOIN Teachers ON TeacherId = TeacherSubjects.TeacherId
--JOIN Groups ON Schedules.GroupId = Groups.Id
--WHERE
--	Schedules.DayOfWeek = 3 AND
--	Schedules.Week = 2 


--6. Вывести полные имена преподавателей факультета “ComputerScience”, которые не курируют группы кафедры “SoftwareDevelopment”.
--SELECT
--	Teachers.Name,
--	Teachers.Surname
--FROM
--	Departments, Faculties, Groups, Teachers
--WHERE
--	Departments.FacultyId = Faculties.Id AND
--	Departments.Name = N'SoftwareDevelopment' AND
--	Faculties.Name = N'ComputerScience' AND
--	Groups.TeacherCuratorId != Teachers.Id


--7. Вывести список номеров всех корпусов, которые имеются в таблицах факультетов, кафедр и аудиторий.
--SELECT
--	Departments.Building AS [Список корпусов Departments],
--	Faculties.Building AS [Список корпусов Faculties],
--	LectureRooms.Building AS [Список корпусов LectureRooms]
--FROM
--	Departments, Faculties, LectureRooms

--8. Вывести полные имена преподавателей в следующем порядке: деканы факультетов, заведующие кафедрами, преподаватели, кураторы, ассистенты.
--	SELECT 
--		Teachers.Name,
--		Teachers.Surname,
--		1 AS Kind
--	FROM Teachers
--	WHERE Teachers.isDean = 1
--	UNION
--	SELECT 
--		Teachers.Name,
--		Teachers.Surname,
--		2 AS Kind
--	FROM Teachers
--	WHERE Teachers.isHead = 1
--	UNION 
--	SELECT 
--		Teachers.Name,
--		Teachers.Surname,
--		3 AS Kind
--	FROM Teachers
--	WHERE Teachers.isCurator = 1
--	UNION 
--	SELECT 
--		Teachers.Name,
--		Teachers.Surname,
--		4 AS Kind
--	FROM Teachers
--	WHERE Teachers.isAssistant = 1
--	UNION 
--	SELECT 
--		Teachers.Name,
--		Teachers.Surname,
--		5 AS Kind
--	FROM Teachers
--	WHERE Teachers.isAssistant = 0 and
--	Teachers.isCurator = 0 and 
--	Teachers.isDean = 0 and 
--	Teachers.isHead = 0
--ORDER BY Kind


--Вывести дни недели (без повторений), в которые имеются занятия в аудиториях “A311” и “A104” корпуса 6.
--SELECT
--	Schedules.DayOfWeek 
--FROM
--	Schedules
--JOIN GroupS ON Schedules.GroupId = Groups.Id
--WHERE Groups.Name = N'A311' OR Groups.Name = N'A104'
	

	