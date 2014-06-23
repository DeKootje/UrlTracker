IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'icUrlTracker') AND NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE TABLE_NAME = 'icUrlTracker' AND CONSTRAINT_NAME = 'IX_icUrlTracker')
BEGIN
    CREATE NONCLUSTERED INDEX [IX_icUrlTracker] ON [icUrlTracker]
    (
        [ForceRedirect] ASC,
        [Is404] ASC,
        [RedirectRootNodeId] ASC
    )
    INCLUDE ( [Id],
    [OldUrl],
    [OldUrlQueryString],
    [OldRegex],
    [RedirectNodeId],
    [RedirectUrl],
    [RedirectHttpCode],
    [RedirectPassThroughQueryString],
    [Notes],
    [Referrer],
    [Inserted]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
END