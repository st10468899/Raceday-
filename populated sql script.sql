USE RaceDayDB;
GO


INSERT INTO [USER] (Name, Email, Password, Role)
VALUES 
('Alice Organiser', 'alice@raceday.com', 'hashed_pwd_123', 'Organiser'),
('Bob Runner', 'bob@raceday.com', 'hashed_pwd_456', 'Participant');


INSERT INTO EVENT (OrganiserID, Name, Description, EventDate, Location, Distance, EventType)
VALUES (1, 'City Marathon 2026', 'Annual city marathon event', '2026-11-15 06:00:00', 'Central Park', 42.20, 'Run');

INSERT INTO CATEGORY (EventID, CategoryName, CategoryType, Description)
VALUES (1, 'Open 10km', 'Run', '10km run for all age groups');


INSERT INTO ROUTE (EventID, RouteName, Distance, Description)
VALUES (1, 'Main Circuit', 10.00, 'Flat paved road route');


INSERT INTO ENROLMENT (ParticipantID, CategoryID)
VALUES (2, 1);


INSERT INTO RESULT (EnrolmentID, FinishTime, FinishingPosition)
VALUES (1, '00:45:30', 1);
GO


SELECT * FROM [USER];
SELECT * FROM EVENT;
SELECT * FROM RESULT;
GO