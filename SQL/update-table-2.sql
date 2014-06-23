IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'icUrlTracker') AND EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'icUrlTracker' AND (COLUMN_NAME IN ('OldUrl', 'OldUrlQueryString', 'OldRegex', 'RedirectUrl', 'Notes', 'Referrer') AND CHARACTER_MAXIMUM_LENGTH = 400))
BEGIN
    ALTER TABLE [icUrlTracker] ALTER COLUMN OldUrl NVARCHAR(1000)
    ALTER TABLE [icUrlTracker] ALTER COLUMN OldUrlQueryString NVARCHAR(1000)
    ALTER TABLE [icUrlTracker] ALTER COLUMN OldRegex NVARCHAR(1000)
    ALTER TABLE [icUrlTracker] ALTER COLUMN RedirectUrl NVARCHAR(1000)
    ALTER TABLE [icUrlTracker] ALTER COLUMN Notes NVARCHAR(1000)
    ALTER TABLE [icUrlTracker] ALTER COLUMN Referrer NVARCHAR(1000)
END