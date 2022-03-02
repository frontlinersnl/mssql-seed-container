IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [Customers] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [Void] bit NOT NULL,
        [VoidAt] datetime2 NULL,
        [VoidBy] uniqueidentifier NULL,
        [VoidReason] nvarchar(max) NULL,
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [UniqueId] int NOT NULL IDENTITY,
        [AlternativeCity] nvarchar(max) NULL,
        [AlternativeCountryId] nvarchar(max) NULL,
        [AlternativeHouseNumber] nvarchar(max) NULL,
        [AlternativeStreet] nvarchar(max) NULL,
        [AlternativeZipCode] nvarchar(max) NULL,
        [EmailAddress] nvarchar(max) NULL,
        [FaxNumber] nvarchar(max) NULL,
        [HasAlternativeCorrespondenceAddress] bit NULL,
        [RelationId] int NULL,
        [TelephoneNumber] nvarchar(max) NULL,
        CONSTRAINT [PK_Customers] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [Executions] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [Void] bit NOT NULL,
        [VoidAt] datetime2 NULL,
        [VoidBy] uniqueidentifier NULL,
        [VoidReason] nvarchar(max) NULL,
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [Number] int NULL,
        CONSTRAINT [PK_Executions] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [Locations] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [Void] bit NOT NULL,
        [VoidAt] datetime2 NULL,
        [VoidBy] uniqueidentifier NULL,
        [VoidReason] nvarchar(max) NULL,
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [UniqueId] int NOT NULL IDENTITY,
        [RelationId] int NULL,
        [LocationType] nvarchar(50) NOT NULL,
        [IsChassisAvailable] bit NOT NULL,
        [TimeEndFriday] bigint NULL,
        [TimeEndMonday] bigint NULL,
        [TimeEndSaturday] bigint NULL,
        [TimeEndSunday] bigint NULL,
        [TimeEndThursday] bigint NULL,
        [TimeEndTuesday] bigint NULL,
        [TimeEndWednesday] bigint NULL,
        [TimeStartFriday] bigint NULL,
        [TimeStartMonday] bigint NULL,
        [TimeStartSaturday] bigint NULL,
        [TimeStartSunday] bigint NULL,
        [TimeStartThursday] bigint NULL,
        [TimeStartTuesday] bigint NULL,
        [TimeStartWednesday] bigint NULL,
        [CleaningTimeValidity] int NULL,
        [VacuumTest] bit NULL,
        CONSTRAINT [PK_Locations] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [Messages] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [Text] nvarchar(max) NULL,
        [BoardComputerId] nvarchar(max) NULL,
        [DriverId] int NULL,
        [Created] datetime2 NOT NULL,
        [Sent] datetime2 NULL,
        [Read] datetime2 NULL,
        [Received] datetime2 NULL,
        [JobId] uniqueidentifier NOT NULL,
        CONSTRAINT [PK_Messages] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [Products] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [Void] bit NOT NULL,
        [VoidAt] datetime2 NULL,
        [VoidBy] uniqueidentifier NULL,
        [VoidReason] nvarchar(max) NULL,
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [ADRClass] nvarchar(max) NULL,
        [HazardIdentificationNumber] nvarchar(max) NULL,
        [Name] nvarchar(max) NULL,
        [PackingGroup] nvarchar(max) NULL,
        [ProductSynonymId] int NULL,
        [ProperShippingName] nvarchar(max) NULL,
        [TunnelRestrictionCode] nvarchar(max) NULL,
        [UNNumber] nvarchar(max) NULL,
        [UNTankInstructionId] int NULL,
        [TF1ProductId] int NULL,
        CONSTRAINT [PK_Products] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [SecurableItems] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [Name] nvarchar(max) NULL,
        CONSTRAINT [PK_SecurableItems] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [Settings] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [Key] nvarchar(max) NULL,
        [Value] nvarchar(max) NULL,
        [UserId] uniqueidentifier NULL,
        CONSTRAINT [PK_Settings] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [Surcharges] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [Void] bit NOT NULL,
        [VoidAt] datetime2 NULL,
        [VoidBy] uniqueidentifier NULL,
        [VoidReason] nvarchar(max) NULL,
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [Name] nvarchar(max) NULL,
        CONSTRAINT [PK_Surcharges] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [CustomerContacts] (
        [ContactId] int NOT NULL,
        [CustomerId] uniqueidentifier NOT NULL,
        CONSTRAINT [PK_CustomerContacts] PRIMARY KEY ([CustomerId], [ContactId]),
        CONSTRAINT [FK_CustomerContacts_Customers_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [Customers] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [Matrices] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [Void] bit NOT NULL,
        [VoidAt] datetime2 NULL,
        [VoidBy] uniqueidentifier NULL,
        [VoidReason] nvarchar(max) NULL,
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [Active] bit NOT NULL,
        [CurrencyId] int NULL,
        [CustomerId] uniqueidentifier NULL,
        [HourRate] decimal(18,2) NULL,
        [Name] nvarchar(max) NULL,
        [Revision] int NULL,
        [RevisionBasedOn] int NULL,
        [RevisionComment] nvarchar(max) NULL,
        [RevisionGroup] uniqueidentifier NULL,
        [ValidUntil] datetime2 NULL,
        CONSTRAINT [PK_Matrices] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_Matrices_Customers_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [Customers] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [Orders] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [Void] bit NOT NULL,
        [VoidAt] datetime2 NULL,
        [VoidBy] uniqueidentifier NULL,
        [VoidReason] nvarchar(max) NULL,
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [UniqueId] int NOT NULL IDENTITY,
        [AccountManager] nvarchar(max) NULL,
        [ContactId] int NULL,
        [CustomerId] uniqueidentifier NULL,
        [CustomerReference] nvarchar(max) NULL,
        [EquipmentNumber] nvarchar(max) NULL,
        [EquipmentSize] int NULL,
        [Number] int NOT NULL,
        [Status] nvarchar(max) NOT NULL,
        [Remarks] nvarchar(max) NULL,
        [CustomerId1] uniqueidentifier NULL,
        CONSTRAINT [PK_Orders] PRIMARY KEY ([Id]),
        CONSTRAINT [AK_Orders_UniqueId] UNIQUE ([UniqueId]),
        CONSTRAINT [FK_Orders_Customers_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [Customers] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_Orders_Customers_CustomerId1] FOREIGN KEY ([CustomerId1]) REFERENCES [Customers] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [ExecutionRates] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [Amount] decimal(18,2) NULL,
        [CurrencyId] int NULL,
        [CustomerId] uniqueidentifier NULL,
        [ExecutionId] uniqueidentifier NOT NULL,
        [ValidUntil] datetime2 NULL,
        CONSTRAINT [PK_ExecutionRates] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_ExecutionRates_Customers_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [Customers] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_ExecutionRates_Executions_ExecutionId] FOREIGN KEY ([ExecutionId]) REFERENCES [Executions] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [ExecutionActionLocations] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [ActionId] int NULL,
        [ExecutionId] uniqueidentifier NULL,
        [LocationId] int NULL,
        [Sequence] int NULL,
        [LocationId1] uniqueidentifier NULL,
        CONSTRAINT [PK_ExecutionActionLocations] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_ExecutionActionLocations_Executions_ExecutionId] FOREIGN KEY ([ExecutionId]) REFERENCES [Executions] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_ExecutionActionLocations_Locations_LocationId1] FOREIGN KEY ([LocationId1]) REFERENCES [Locations] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [LocationContact] (
        [LocationId] uniqueidentifier NOT NULL,
        [ContactId] int NOT NULL,
        CONSTRAINT [PK_LocationContact] PRIMARY KEY ([LocationId], [ContactId]),
        CONSTRAINT [FK_LocationContact_Locations_LocationId] FOREIGN KEY ([LocationId]) REFERENCES [Locations] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [SecurableItemRoles] (
        [RoleId] int NOT NULL,
        [SecurableItemId] uniqueidentifier NOT NULL,
        CONSTRAINT [PK_SecurableItemRoles] PRIMARY KEY ([RoleId], [SecurableItemId]),
        CONSTRAINT [FK_SecurableItemRoles_SecurableItems_SecurableItemId] FOREIGN KEY ([SecurableItemId]) REFERENCES [SecurableItems] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [MatrixSurcharges] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [Fixed] bit NULL,
        [FreeMinutes] int NULL,
        [HourBase] decimal(18,2) NULL,
        [LocationId] int NULL,
        [MatrixId] uniqueidentifier NULL,
        [Rate] decimal(18,2) NULL,
        [SurchargeId] uniqueidentifier NULL,
        CONSTRAINT [PK_MatrixSurcharges] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_MatrixSurcharges_Matrices_MatrixId] FOREIGN KEY ([MatrixId]) REFERENCES [Matrices] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_MatrixSurcharges_Surcharges_SurchargeId] FOREIGN KEY ([SurchargeId]) REFERENCES [Surcharges] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [MatrixTarrifs] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [Amount] decimal(18,2) NULL,
        [FromLocationId] int NULL,
        [MatrixId] uniqueidentifier NULL,
        [ToLocationId] int NULL,
        CONSTRAINT [PK_MatrixTarrifs] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_MatrixTarrifs_Matrices_MatrixId] FOREIGN KEY ([MatrixId]) REFERENCES [Matrices] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [OrderActions] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [Sequence] int NOT NULL,
        [ActionId] int NULL,
        [Clean] bit NULL,
        [StartWindow] datetime2 NULL,
        [EndWindow] datetime2 NULL,
        [DestinationCountryId] int NULL,
        [Empty] bit NULL,
        [Instruction] nvarchar(max) NULL,
        [IsDropFor] bit NULL,
        [LocationId] int NULL,
        [LocationInfo] nvarchar(max) NULL,
        [OrderId] uniqueidentifier NOT NULL,
        [Reference] nvarchar(max) NULL,
        [RouteOperatorId] int NULL,
        [RouteStatus] nvarchar(max) NULL,
        [ToBeAdvised] bit NULL,
        [WithChassis] bit NULL,
        CONSTRAINT [PK_OrderActions] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_OrderActions_Orders_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [Orders] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [OrderChains] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [UniqueId] int NOT NULL IDENTITY,
        [DriverId] int NULL,
        [Duration] int NULL,
        [End] datetime2 NULL,
        [EndWindow] datetime2 NULL,
        [ExtraCosts] float NULL,
        [ExtraDistance] int NULL,
        [ExtraTime] int NULL,
        [OrderId] uniqueidentifier NULL,
        [PlannedEnd] datetime2 NULL,
        [PlannedStart] datetime2 NULL,
        [Start] datetime2 NULL,
        [StartWindow] datetime2 NULL,
        [Status] nvarchar(max) NOT NULL,
        [TruckId] int NULL,
        [Remarks] nvarchar(max) NULL,
        CONSTRAINT [PK_OrderChains] PRIMARY KEY ([Id]),
        CONSTRAINT [AK_OrderChains_UniqueId] UNIQUE ([UniqueId]),
        CONSTRAINT [FK_OrderChains_Orders_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [Orders] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [OrderProducts] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [OrderId] uniqueidentifier NULL,
        [ProductId] uniqueidentifier NULL,
        [Quantity] float NULL,
        [Sequence] int NULL,
        CONSTRAINT [PK_OrderProducts] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_OrderProducts_Orders_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [Orders] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_OrderProducts_Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [Products] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [OrderSurcharges] (
        [OrderId] uniqueidentifier NOT NULL,
        [SurchargeId] uniqueidentifier NOT NULL,
        CONSTRAINT [PK_OrderSurcharges] PRIMARY KEY ([OrderId], [SurchargeId]),
        CONSTRAINT [FK_OrderSurcharges_Orders_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [Orders] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_OrderSurcharges_Surcharges_SurchargeId] FOREIGN KEY ([SurchargeId]) REFERENCES [Surcharges] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [ExportTasks] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [UniqueId] int NOT NULL,
        [DriverId] int NOT NULL,
        [OrderId] uniqueidentifier NOT NULL,
        [OrderChainId] uniqueidentifier NOT NULL,
        [ShiftId] int NOT NULL,
        [TruckId] int NOT NULL,
        [Type] nvarchar(max) NOT NULL,
        [Status] nvarchar(max) NOT NULL,
        [TripCode] nvarchar(max) NULL,
        CONSTRAINT [PK_ExportTasks] PRIMARY KEY ([Id]),
        CONSTRAINT [AK_ExportTasks_UniqueId] UNIQUE ([UniqueId]),
        CONSTRAINT [FK_ExportTasks_OrderChains_OrderChainId] FOREIGN KEY ([OrderChainId]) REFERENCES [OrderChains] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_ExportTasks_Orders_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [Orders] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [OrderChainActions] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [UniqueId] int NOT NULL IDENTITY,
        [ActionId] int NULL,
        [ActualEndDateTime] datetimeoffset NULL,
        [ActualStartDateTime] datetimeoffset NULL,
        [Distance] float NULL,
        [Duration] int NULL,
        [EndDateTime] datetimeoffset NULL,
        [EndTimeWindow] datetimeoffset NULL,
        [JobId] uniqueidentifier NULL,
        [LocationId] int NULL,
        [LocationToId] int NULL,
        [OrderActionId] uniqueidentifier NULL,
        [OrderChainId] uniqueidentifier NULL,
        [PlannedEndDateTime] datetimeoffset NULL,
        [PlannedStartDateTime] datetimeoffset NULL,
        [StartDateTime] datetimeoffset NULL,
        [StartTimeWindow] datetimeoffset NULL,
        [WithChassis] bit NULL,
        [Remarks] nvarchar(max) NULL,
        CONSTRAINT [PK_OrderChainActions] PRIMARY KEY ([Id]),
        CONSTRAINT [AK_OrderChainActions_UniqueId] UNIQUE ([UniqueId]),
        CONSTRAINT [FK_OrderChainActions_OrderActions_OrderActionId] FOREIGN KEY ([OrderActionId]) REFERENCES [OrderActions] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_OrderChainActions_OrderChains_OrderChainId] FOREIGN KEY ([OrderChainId]) REFERENCES [OrderChains] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [OrderActionProducts] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [Compartment] int NOT NULL,
        [OrderActionId] uniqueidentifier NULL,
        [OrderProductId] uniqueidentifier NULL,
        [Quantity] float NULL,
        CONSTRAINT [PK_OrderActionProducts] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_OrderActionProducts_OrderActions_OrderActionId] FOREIGN KEY ([OrderActionId]) REFERENCES [OrderActions] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_OrderActionProducts_OrderProducts_OrderProductId] FOREIGN KEY ([OrderProductId]) REFERENCES [OrderProducts] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE TABLE [ExportTaskActions] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [UniqueId] int NOT NULL,
        [Type] nvarchar(max) NULL,
        [OrderChainActionId] uniqueidentifier NULL,
        [StartInstant] datetime2 NOT NULL,
        [EndInstant] datetime2 NOT NULL,
        [LocationId] int NOT NULL,
        [WithChassis] bit NOT NULL,
        [ChassisId] int NULL,
        [ChassisName] nvarchar(max) NULL,
        [EquipmentNumber] nvarchar(max) NULL,
        [JobId] uniqueidentifier NULL,
        [ExportTaskId] uniqueidentifier NOT NULL,
        CONSTRAINT [PK_ExportTaskActions] PRIMARY KEY ([Id]),
        CONSTRAINT [AK_ExportTaskActions_UniqueId] UNIQUE ([UniqueId]),
        CONSTRAINT [FK_ExportTaskActions_ExportTasks_ExportTaskId] FOREIGN KEY ([ExportTaskId]) REFERENCES [ExportTasks] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_ExportTaskActions_OrderChainActions_OrderChainActionId] FOREIGN KEY ([OrderChainActionId]) REFERENCES [OrderChainActions] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_ExecutionActionLocations_ExecutionId] ON [ExecutionActionLocations] ([ExecutionId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_ExecutionActionLocations_LocationId1] ON [ExecutionActionLocations] ([LocationId1]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_ExecutionRates_CustomerId] ON [ExecutionRates] ([CustomerId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_ExecutionRates_ExecutionId] ON [ExecutionRates] ([ExecutionId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_ExportTaskActions_ExportTaskId] ON [ExportTaskActions] ([ExportTaskId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_ExportTaskActions_OrderChainActionId] ON [ExportTaskActions] ([OrderChainActionId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_ExportTasks_OrderChainId] ON [ExportTasks] ([OrderChainId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_ExportTasks_OrderId] ON [ExportTasks] ([OrderId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_Matrices_CustomerId] ON [Matrices] ([CustomerId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_MatrixSurcharges_MatrixId] ON [MatrixSurcharges] ([MatrixId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_MatrixSurcharges_SurchargeId] ON [MatrixSurcharges] ([SurchargeId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_MatrixTarrifs_MatrixId] ON [MatrixTarrifs] ([MatrixId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_OrderActionProducts_OrderActionId] ON [OrderActionProducts] ([OrderActionId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_OrderActionProducts_OrderProductId] ON [OrderActionProducts] ([OrderProductId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_OrderActions_OrderId] ON [OrderActions] ([OrderId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_OrderChainActions_OrderActionId] ON [OrderChainActions] ([OrderActionId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_OrderChainActions_OrderChainId] ON [OrderChainActions] ([OrderChainId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_OrderChainActions_UniqueId] ON [OrderChainActions] ([UniqueId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_OrderChains_OrderId] ON [OrderChains] ([OrderId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_OrderProducts_OrderId] ON [OrderProducts] ([OrderId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_OrderProducts_ProductId] ON [OrderProducts] ([ProductId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_Orders_CustomerId] ON [Orders] ([CustomerId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_Orders_CustomerId1] ON [Orders] ([CustomerId1]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_OrderSurcharges_SurchargeId] ON [OrderSurcharges] ([SurchargeId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    CREATE INDEX [IX_SecurableItemRoles_SecurableItemId] ON [SecurableItemRoles] ([SecurableItemId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191031153740_initial')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191031153740_initial', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191105133733_AddedOrderNumbersSequence')
BEGIN
    CREATE SEQUENCE [OrderNumbers] AS int START WITH 100 INCREMENT BY 1 NO MINVALUE NO MAXVALUE NO CYCLE;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191105133733_AddedOrderNumbersSequence')
BEGIN
    DECLARE @var0 sysname;
    SELECT @var0 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Orders]') AND [c].[name] = N'Number');
    IF @var0 IS NOT NULL EXEC(N'ALTER TABLE [Orders] DROP CONSTRAINT [' + @var0 + '];');
    ALTER TABLE [Orders] ADD DEFAULT (NEXT VALUE FOR OrderNumbers) FOR [Number];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191105133733_AddedOrderNumbersSequence')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191105133733_AddedOrderNumbersSequence', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191112090143_RemovedExportTaskActionLocation')
BEGIN
    DECLARE @var1 sysname;
    SELECT @var1 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[ExportTaskActions]') AND [c].[name] = N'LocationId');
    IF @var1 IS NOT NULL EXEC(N'ALTER TABLE [ExportTaskActions] DROP CONSTRAINT [' + @var1 + '];');
    ALTER TABLE [ExportTaskActions] DROP COLUMN [LocationId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191112090143_RemovedExportTaskActionLocation')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191112090143_RemovedExportTaskActionLocation', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191112090249_AddedExportTaskActionLocation')
BEGIN
    ALTER TABLE [ExportTaskActions] ADD [LocationId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191112090249_AddedExportTaskActionLocation')
BEGIN
    CREATE INDEX [IX_ExportTaskActions_LocationId] ON [ExportTaskActions] ([LocationId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191112090249_AddedExportTaskActionLocation')
BEGIN
    ALTER TABLE [ExportTaskActions] ADD CONSTRAINT [FK_ExportTaskActions_Locations_LocationId] FOREIGN KEY ([LocationId]) REFERENCES [Locations] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191112090249_AddedExportTaskActionLocation')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191112090249_AddedExportTaskActionLocation', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var2 sysname;
    SELECT @var2 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChains]') AND [c].[name] = N'DriverId');
    IF @var2 IS NOT NULL EXEC(N'ALTER TABLE [OrderChains] DROP CONSTRAINT [' + @var2 + '];');
    ALTER TABLE [OrderChains] DROP COLUMN [DriverId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var3 sysname;
    SELECT @var3 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChains]') AND [c].[name] = N'Duration');
    IF @var3 IS NOT NULL EXEC(N'ALTER TABLE [OrderChains] DROP CONSTRAINT [' + @var3 + '];');
    ALTER TABLE [OrderChains] DROP COLUMN [Duration];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var4 sysname;
    SELECT @var4 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChains]') AND [c].[name] = N'End');
    IF @var4 IS NOT NULL EXEC(N'ALTER TABLE [OrderChains] DROP CONSTRAINT [' + @var4 + '];');
    ALTER TABLE [OrderChains] DROP COLUMN [End];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var5 sysname;
    SELECT @var5 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChains]') AND [c].[name] = N'ExtraCosts');
    IF @var5 IS NOT NULL EXEC(N'ALTER TABLE [OrderChains] DROP CONSTRAINT [' + @var5 + '];');
    ALTER TABLE [OrderChains] DROP COLUMN [ExtraCosts];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var6 sysname;
    SELECT @var6 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChains]') AND [c].[name] = N'ExtraDistance');
    IF @var6 IS NOT NULL EXEC(N'ALTER TABLE [OrderChains] DROP CONSTRAINT [' + @var6 + '];');
    ALTER TABLE [OrderChains] DROP COLUMN [ExtraDistance];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var7 sysname;
    SELECT @var7 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChains]') AND [c].[name] = N'ExtraTime');
    IF @var7 IS NOT NULL EXEC(N'ALTER TABLE [OrderChains] DROP CONSTRAINT [' + @var7 + '];');
    ALTER TABLE [OrderChains] DROP COLUMN [ExtraTime];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var8 sysname;
    SELECT @var8 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChains]') AND [c].[name] = N'PlannedEnd');
    IF @var8 IS NOT NULL EXEC(N'ALTER TABLE [OrderChains] DROP CONSTRAINT [' + @var8 + '];');
    ALTER TABLE [OrderChains] DROP COLUMN [PlannedEnd];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var9 sysname;
    SELECT @var9 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChains]') AND [c].[name] = N'PlannedStart');
    IF @var9 IS NOT NULL EXEC(N'ALTER TABLE [OrderChains] DROP CONSTRAINT [' + @var9 + '];');
    ALTER TABLE [OrderChains] DROP COLUMN [PlannedStart];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var10 sysname;
    SELECT @var10 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChains]') AND [c].[name] = N'Start');
    IF @var10 IS NOT NULL EXEC(N'ALTER TABLE [OrderChains] DROP CONSTRAINT [' + @var10 + '];');
    ALTER TABLE [OrderChains] DROP COLUMN [Start];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var11 sysname;
    SELECT @var11 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChains]') AND [c].[name] = N'TruckId');
    IF @var11 IS NOT NULL EXEC(N'ALTER TABLE [OrderChains] DROP CONSTRAINT [' + @var11 + '];');
    ALTER TABLE [OrderChains] DROP COLUMN [TruckId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var12 sysname;
    SELECT @var12 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChainActions]') AND [c].[name] = N'ActualEndDateTime');
    IF @var12 IS NOT NULL EXEC(N'ALTER TABLE [OrderChainActions] DROP CONSTRAINT [' + @var12 + '];');
    ALTER TABLE [OrderChainActions] DROP COLUMN [ActualEndDateTime];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var13 sysname;
    SELECT @var13 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChainActions]') AND [c].[name] = N'ActualStartDateTime');
    IF @var13 IS NOT NULL EXEC(N'ALTER TABLE [OrderChainActions] DROP CONSTRAINT [' + @var13 + '];');
    ALTER TABLE [OrderChainActions] DROP COLUMN [ActualStartDateTime];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var14 sysname;
    SELECT @var14 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChainActions]') AND [c].[name] = N'Distance');
    IF @var14 IS NOT NULL EXEC(N'ALTER TABLE [OrderChainActions] DROP CONSTRAINT [' + @var14 + '];');
    ALTER TABLE [OrderChainActions] DROP COLUMN [Distance];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var15 sysname;
    SELECT @var15 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChainActions]') AND [c].[name] = N'EndDateTime');
    IF @var15 IS NOT NULL EXEC(N'ALTER TABLE [OrderChainActions] DROP CONSTRAINT [' + @var15 + '];');
    ALTER TABLE [OrderChainActions] DROP COLUMN [EndDateTime];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var16 sysname;
    SELECT @var16 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChainActions]') AND [c].[name] = N'PlannedEndDateTime');
    IF @var16 IS NOT NULL EXEC(N'ALTER TABLE [OrderChainActions] DROP CONSTRAINT [' + @var16 + '];');
    ALTER TABLE [OrderChainActions] DROP COLUMN [PlannedEndDateTime];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var17 sysname;
    SELECT @var17 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChainActions]') AND [c].[name] = N'PlannedStartDateTime');
    IF @var17 IS NOT NULL EXEC(N'ALTER TABLE [OrderChainActions] DROP CONSTRAINT [' + @var17 + '];');
    ALTER TABLE [OrderChainActions] DROP COLUMN [PlannedStartDateTime];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    DECLARE @var18 sysname;
    SELECT @var18 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChainActions]') AND [c].[name] = N'StartDateTime');
    IF @var18 IS NOT NULL EXEC(N'ALTER TABLE [OrderChainActions] DROP CONSTRAINT [' + @var18 + '];');
    ALTER TABLE [OrderChainActions] DROP COLUMN [StartDateTime];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    ALTER TABLE [Customers] ADD CONSTRAINT [AK_Customers_UniqueId] UNIQUE ([UniqueId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191121124633_RemovedNotUsedPropertiesOrderChainAction')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191121124633_RemovedNotUsedPropertiesOrderChainAction', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    delete ExportTaskActions;
                                       delete ExportTasks;
                                       delete OrderChainActions;
                                       delete OrderChains;
                                       delete OrderActionProducts;
                                       delete OrderActions;
                                       delete OrderProducts;
                                       delete OrderSurcharges;
                                       delete Orders;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    DECLARE @var19 sysname;
    SELECT @var19 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChainActions]') AND [c].[name] = N'LocationToId');
    IF @var19 IS NOT NULL EXEC(N'ALTER TABLE [OrderChainActions] DROP CONSTRAINT [' + @var19 + '];');
    ALTER TABLE [OrderChainActions] DROP COLUMN [LocationToId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    DECLARE @var20 sysname;
    SELECT @var20 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChainActions]') AND [c].[name] = N'WithChassis');
    IF @var20 IS NOT NULL EXEC(N'ALTER TABLE [OrderChainActions] DROP CONSTRAINT [' + @var20 + '];');
    ALTER TABLE [OrderChainActions] ALTER COLUMN [WithChassis] bit NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    DECLARE @var21 sysname;
    SELECT @var21 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChainActions]') AND [c].[name] = N'LocationId');
    IF @var21 IS NOT NULL EXEC(N'ALTER TABLE [OrderChainActions] DROP CONSTRAINT [' + @var21 + '];');
    ALTER TABLE [OrderChainActions] DROP COLUMN [LocationId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    ALTER TABLE [OrderChainActions] ADD [LocationId] uniqueidentifier NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    ALTER TABLE [OrderChainActions] ADD [Sequence] int NOT NULL DEFAULT 0;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    DECLARE @var22 sysname;
    SELECT @var22 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderActions]') AND [c].[name] = N'WithChassis');
    IF @var22 IS NOT NULL EXEC(N'ALTER TABLE [OrderActions] DROP CONSTRAINT [' + @var22 + '];');
    ALTER TABLE [OrderActions] ALTER COLUMN [WithChassis] bit NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    DECLARE @var23 sysname;
    SELECT @var23 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderActions]') AND [c].[name] = N'ToBeAdvised');
    IF @var23 IS NOT NULL EXEC(N'ALTER TABLE [OrderActions] DROP CONSTRAINT [' + @var23 + '];');
    ALTER TABLE [OrderActions] ALTER COLUMN [ToBeAdvised] bit NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    DECLARE @var24 sysname;
    SELECT @var24 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderActions]') AND [c].[name] = N'LocationId');
    IF @var24 IS NOT NULL EXEC(N'ALTER TABLE [OrderActions] DROP CONSTRAINT [' + @var24 + '];');
    ALTER TABLE [OrderActions] DROP COLUMN [LocationId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    ALTER TABLE [OrderActions] ADD [LocationId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    DECLARE @var25 sysname;
    SELECT @var25 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderActions]') AND [c].[name] = N'IsDropFor');
    IF @var25 IS NOT NULL EXEC(N'ALTER TABLE [OrderActions] DROP CONSTRAINT [' + @var25 + '];');
    ALTER TABLE [OrderActions] ALTER COLUMN [IsDropFor] bit NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    DECLARE @var26 sysname;
    SELECT @var26 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderActions]') AND [c].[name] = N'Empty');
    IF @var26 IS NOT NULL EXEC(N'ALTER TABLE [OrderActions] DROP CONSTRAINT [' + @var26 + '];');
    ALTER TABLE [OrderActions] ALTER COLUMN [Empty] bit NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    DECLARE @var27 sysname;
    SELECT @var27 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderActions]') AND [c].[name] = N'Clean');
    IF @var27 IS NOT NULL EXEC(N'ALTER TABLE [OrderActions] DROP CONSTRAINT [' + @var27 + '];');
    ALTER TABLE [OrderActions] ALTER COLUMN [Clean] bit NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    ALTER TABLE [OrderActions] ADD [OrdModalityId] int NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    CREATE INDEX [IX_OrderChainActions_LocationId] ON [OrderChainActions] ([LocationId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    CREATE INDEX [IX_OrderActions_LocationId] ON [OrderActions] ([LocationId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    ALTER TABLE [OrderActions] ADD CONSTRAINT [FK_OrderActions_Locations_LocationId] FOREIGN KEY ([LocationId]) REFERENCES [Locations] ([Id]) ON DELETE CASCADE;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    ALTER TABLE [OrderChainActions] ADD CONSTRAINT [FK_OrderChainActions_Locations_LocationId] FOREIGN KEY ([LocationId]) REFERENCES [Locations] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128135322_ChangedRelation2Location')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191128135322_ChangedRelation2Location', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128140153_AddedChassis')
BEGIN
    DECLARE @var28 sysname;
    SELECT @var28 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChainActions]') AND [c].[name] = N'WithChassis');
    IF @var28 IS NOT NULL EXEC(N'ALTER TABLE [OrderChainActions] DROP CONSTRAINT [' + @var28 + '];');
    ALTER TABLE [OrderChainActions] DROP COLUMN [WithChassis];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128140153_AddedChassis')
BEGIN
    ALTER TABLE [OrderActions] ADD [ChassisId] int NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128140153_AddedChassis')
BEGIN
    ALTER TABLE [OrderActions] ADD [ChassisNumber] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191128140153_AddedChassis')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191128140153_AddedChassis', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191129110417_AddedSecurableItemSeedData')
BEGIN
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Name') AND [object_id] = OBJECT_ID(N'[SecurableItems]'))
        SET IDENTITY_INSERT [SecurableItems] ON;
    EXEC(N'INSERT INTO [SecurableItems] ([Id], [Name])
    VALUES (''60c1a157-e962-45d3-b094-211f3ffb6a9e'', N''root.canEditInfoPage''),
    (''709c49a1-9778-4a60-a67e-d7a31839dc16'', N''root.masterFiles.matrix.copy''),
    (''5b5b7e15-ea41-4199-9526-84453dbaa92c'', N''root.masterFiles.matrix.edit''),
    (''43285dd1-e749-4d73-9706-e6c8ddb69969'', N''root.masterFiles.matrix.new''),
    (''ad114c5f-f086-412b-b545-0d81b2c9bc2a'', N''root.masterFiles.matrix.revisions''),
    (''94fa1a7d-52be-4466-889e-c986c79af6e0'', N''root.masterFiles.matrix.unvoid''),
    (''d2a1e00a-76f1-46f8-9032-891425fba349'', N''root.masterFiles.matrix.void''),
    (''c3ae076d-f9a5-4476-b654-c1f1e87ad0b8'', N''root.masterFiles.products''),
    (''bae131d2-bfb0-4133-afd1-90509fca924b'', N''root.masterFiles.products.edit''),
    (''d5e38f0c-a36f-4c00-8fa7-903d7823aa0e'', N''root.masterFiles.products.new''),
    (''6030c54d-d173-4045-9c25-7339a479c890'', N''root.masterFiles.products.unvoid''),
    (''a45a877d-d5af-4433-ae86-f6fb87b2b49d'', N''root.masterFiles.products.void''),
    (''36646450-3577-492f-8565-6b1d78953f02'', N''root.masterFiles.surcharges''),
    (''ea06a5eb-bc93-42cf-832d-75a030eb6b1c'', N''root.masterFiles.surcharges.edit''),
    (''e430718a-990d-4eb4-b16b-e7f67d8203a6'', N''root.masterFiles.surcharges.new''),
    (''bd1c8979-03d5-4a42-b5ed-c55eefe443d6'', N''root.masterFiles.surcharges.unvoid''),
    (''0a970ef0-ccea-4b77-900d-8ffc180c39e0'', N''root.masterFiles.surcharges.void''),
    (''8134108d-4657-480f-a8dc-e0e9e128e392'', N''root.masterFiles.terminalLocations''),
    (''9b942a50-6993-4497-932e-2c4b00b9a05e'', N''root.masterFiles.terminalLocations.edit''),
    (''1190cdfa-0145-4acc-bbf6-c7a641b129f2'', N''root.masterFiles.terminalLocations.new''),
    (''1abf5ead-539e-4a5a-bf10-077298e10474'', N''root.masterFiles.terminalLocations.unvoid''),
    (''4b76f8ae-7a92-4015-9891-81a8122e2754'', N''root.masterFiles.terminalLocations.void''),
    (''2cf06684-05db-4211-a829-c45f7a05c868'', N''root.security.permissionsManagement''),
    (''3f02a7f4-c66c-4f01-b45f-fc075c552b84'', N''root.serviceCenter.ediOrders''),
    (''5ce54db9-9928-4b8e-a2db-503519989b12'', N''root.serviceCenter.orders''),
    (''9ce96fa0-76d6-42d5-a066-b68ba244e0c2'', N''root.serviceCenter.orders.edit''),
    (''60e2486e-77cc-46c3-9d39-6f386174a1ff'', N''root.serviceCenter.orders.new''),
    (''45a110fb-c604-4c85-b49f-464753b2a866'', N''root.serviceCenter.orders.unvoid''),
    (''3eb9eef7-85d1-48fc-a46f-ac0d91fb8bd6'', N''root.masterFiles.matrix''),
    (''e1e55fee-d870-4f2c-a0ea-757785ba2cee'', N''root.masterFiles.loadingLocations.void''),
    (''befec802-e6f8-4f81-8c5d-2d181de480ea'', N''root.masterFiles.loadingLocations.unvoid''),
    (''a2457447-d442-4551-a4d3-244e9c91905c'', N''root.masterFiles.loadingLocations.new''),
    (''c90f9816-12d5-41cc-9575-c9ad31e36e86'', N''root.dashboard''),
    (''8ae3b616-6081-468c-8bde-82d1e9be3ed0'', N''root.masterFiles.cleaningLocations''),
    (''88919bcb-0d1f-46f7-9219-80c81d4e07fd'', N''root.masterFiles.cleaningLocations.edit''),
    (''403a91df-7b6f-4094-a916-cffc8905f492'', N''root.masterFiles.cleaningLocations.new''),
    (''ecedf790-f5a8-4c4e-bcbf-bfac68219535'', N''root.masterFiles.cleaningLocations.unvoid''),
    (''0edbef3c-fb9b-4276-ad64-d6b39f885a4c'', N''root.masterFiles.cleaningLocations.void''),
    (''9417f36d-c1d3-418c-9795-0702f7109686'', N''root.masterFiles.customers''),
    (''b4175f88-197a-4528-b0c1-37d6d8d32476'', N''root.masterFiles.customers.edit''),
    (''b02c624a-0660-474c-8071-aabf88a50838'', N''root.masterFiles.customers.new''),
    (''10f1e0a3-2ae0-4073-aebb-8a08ed4fb76a'', N''root.masterFiles.customers.unvoid''),
    (''ebbebcae-5344-4548-8851-2c2460e37c43'', N''root.masterFiles.customers.void''),
    (''cde10882-f7bf-43e7-9225-e5bab774a11c'', N''root.masterFiles.deliveryLocations''),
    (''488f5eb1-6b19-4ca3-8a50-4d294eee4562'', N''root.masterFiles.deliveryLocations.edit''),
    (''f4a1ae21-fec6-45df-b568-c0a735cd9d15'', N''root.serviceCenter.orders.void''),
    (''35d89710-7dd2-4c27-acd5-1e573265f1d7'', N''root.masterFiles.deliveryLocations.new''),
    (''2bf3162d-f008-4546-a6ba-c9ca0dd64cfa'', N''root.masterFiles.deliveryLocations.void''),
    (''a6f9e659-5bfd-45be-b5d9-447061006562'', N''root.masterFiles.depotLocations''),
    (''ff2259da-deda-4ff6-896a-5c4fc85509b3'', N''root.masterFiles.depotLocations.edit''),
    (''e9c3184b-9b33-4a73-88f6-4143571b6257'', N''root.masterFiles.depotLocations.new''),
    (''2809f787-0ef7-4d2c-9538-686bb7adf913'', N''root.masterFiles.depotLocations.unvoid''),
    (''2a43cb2c-08a8-4be1-a0d9-b85ff53fb779'', N''root.masterFiles.depotLocations.void''),
    (''be8f684e-6bda-41bf-9319-3febbe38a7d8'', N''root.masterFiles.executions''),
    (''bbafe771-f0ed-43ff-a46a-c99d28f13e5b'', N''root.masterFiles.executions.edit''),
    (''416a8612-2dca-4e75-82f1-d3d606799732'', N''root.masterFiles.executions.new''),
    (''664f8add-0801-4bff-b85e-5a0149f49a76'', N''root.masterFiles.executions.unvoid''),
    (''bdda667d-e93f-442f-9a51-21e26ee02cb5'', N''root.masterFiles.executions.void''),
    (''f0195590-00cf-433f-aee0-53c5f205d89a'', N''root.masterFiles.loadingLocations''),
    (''7735ca42-bcf5-4e5b-82f6-1764a7871250'', N''root.masterFiles.loadingLocations.edit''),
    (''8b72700f-808f-4ee7-a1ff-0e995a3a4920'', N''root.masterFiles.deliveryLocations.unvoid''),
    (''7b9a9a6b-4411-4fc8-8667-e6faa2d18902'', N''root.settings.applicationSettings'')');
    IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Name') AND [object_id] = OBJECT_ID(N'[SecurableItems]'))
        SET IDENTITY_INSERT [SecurableItems] OFF;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191129110417_AddedSecurableItemSeedData')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191129110417_AddedSecurableItemSeedData', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191203095309_AddedOnDeleteCascade')
BEGIN
    ALTER TABLE [OrderChainActions] DROP CONSTRAINT [FK_OrderChainActions_OrderActions_OrderActionId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191203095309_AddedOnDeleteCascade')
BEGIN
    ALTER TABLE [OrderChainActions] ADD CONSTRAINT [FK_OrderChainActions_OrderActions_OrderActionId] FOREIGN KEY ([OrderActionId]) REFERENCES [OrderActions] ([Id]) ON DELETE CASCADE;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191203095309_AddedOnDeleteCascade')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191203095309_AddedOnDeleteCascade', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191203104341_AddedLocationAlternateKey')
BEGIN
    ALTER TABLE [Locations] ADD CONSTRAINT [AK_Locations_UniqueId] UNIQUE ([UniqueId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191203104341_AddedLocationAlternateKey')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191203104341_AddedLocationAlternateKey', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191203160746_AddedOrderChainSequence')
BEGIN
    ALTER TABLE [OrderChains] ADD [Sequence] int NOT NULL DEFAULT 0;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191203160746_AddedOrderChainSequence')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191203160746_AddedOrderChainSequence', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191204162252_ChangedOrderChain')
BEGIN
    DECLARE @var29 sysname;
    SELECT @var29 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChains]') AND [c].[name] = N'EndWindow');
    IF @var29 IS NOT NULL EXEC(N'ALTER TABLE [OrderChains] DROP CONSTRAINT [' + @var29 + '];');
    ALTER TABLE [OrderChains] DROP COLUMN [EndWindow];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191204162252_ChangedOrderChain')
BEGIN
    DECLARE @var30 sysname;
    SELECT @var30 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChains]') AND [c].[name] = N'StartWindow');
    IF @var30 IS NOT NULL EXEC(N'ALTER TABLE [OrderChains] DROP CONSTRAINT [' + @var30 + '];');
    ALTER TABLE [OrderChains] DROP COLUMN [StartWindow];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191204162252_ChangedOrderChain')
BEGIN
    DECLARE @var31 sysname;
    SELECT @var31 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChains]') AND [c].[name] = N'Status');
    IF @var31 IS NOT NULL EXEC(N'ALTER TABLE [OrderChains] DROP CONSTRAINT [' + @var31 + '];');
    ALTER TABLE [OrderChains] DROP COLUMN [Status];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191204162252_ChangedOrderChain')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191204162252_ChangedOrderChain', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191206100716_MadeOrderActionLocationIdNullableAgain')
BEGIN
    ALTER TABLE [OrderActions] DROP CONSTRAINT [FK_OrderActions_Locations_LocationId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191206100716_MadeOrderActionLocationIdNullableAgain')
BEGIN
    DECLARE @var32 sysname;
    SELECT @var32 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderActions]') AND [c].[name] = N'LocationId');
    IF @var32 IS NOT NULL EXEC(N'ALTER TABLE [OrderActions] DROP CONSTRAINT [' + @var32 + '];');
    ALTER TABLE [OrderActions] ALTER COLUMN [LocationId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191206100716_MadeOrderActionLocationIdNullableAgain')
BEGIN
    ALTER TABLE [OrderActions] ADD CONSTRAINT [FK_OrderActions_Locations_LocationId] FOREIGN KEY ([LocationId]) REFERENCES [Locations] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191206100716_MadeOrderActionLocationIdNullableAgain')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191206100716_MadeOrderActionLocationIdNullableAgain', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191210105824_AddedIndexes')
BEGIN
    DECLARE @var33 sysname;
    SELECT @var33 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Orders]') AND [c].[name] = N'Status');
    IF @var33 IS NOT NULL EXEC(N'ALTER TABLE [Orders] DROP CONSTRAINT [' + @var33 + '];');
    ALTER TABLE [Orders] ALTER COLUMN [Status] nvarchar(450) NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191210105824_AddedIndexes')
BEGIN
    DECLARE @var34 sysname;
    SELECT @var34 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Messages]') AND [c].[name] = N'BoardComputerId');
    IF @var34 IS NOT NULL EXEC(N'ALTER TABLE [Messages] DROP CONSTRAINT [' + @var34 + '];');
    ALTER TABLE [Messages] ALTER COLUMN [BoardComputerId] nvarchar(450) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191210105824_AddedIndexes')
BEGIN
    CREATE INDEX [IX_Orders_Status] ON [Orders] ([Status]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191210105824_AddedIndexes')
BEGIN
    CREATE INDEX [IX_OrderActions_StartWindow_EndWindow] ON [OrderActions] ([StartWindow], [EndWindow]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191210105824_AddedIndexes')
BEGIN
    CREATE INDEX [IX_Messages_BoardComputerId] ON [Messages] ([BoardComputerId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191210105824_AddedIndexes')
BEGIN
    CREATE INDEX [IX_Messages_JobId] ON [Messages] ([JobId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191210105824_AddedIndexes')
BEGIN
    CREATE INDEX [IX_Matrices_Active] ON [Matrices] ([Active]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191210105824_AddedIndexes')
BEGIN
    CREATE INDEX [IX_Matrices_RevisionGroup] ON [Matrices] ([RevisionGroup]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191210105824_AddedIndexes')
BEGIN
    CREATE INDEX [IX_Matrices_ValidUntil] ON [Matrices] ([ValidUntil]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191210105824_AddedIndexes')
BEGIN
    CREATE INDEX [IX_Locations_LocationType] ON [Locations] ([LocationType]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191210105824_AddedIndexes')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191210105824_AddedIndexes', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191224092443_SplitEquipmentNumber')
BEGIN
    ALTER TABLE [Orders] ADD [ContainerNumber] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191224092443_SplitEquipmentNumber')
BEGIN
    ALTER TABLE [Orders] ADD [RoadBarrel] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191224092443_SplitEquipmentNumber')
BEGIN
    update Orders set ContainerNumber = EquipmentNumber
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191224092443_SplitEquipmentNumber')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191224092443_SplitEquipmentNumber', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200113153453_AddedDriverAndTruck')
BEGIN
    CREATE TABLE [Drivers] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [Void] bit NOT NULL,
        [VoidAt] datetime2 NULL,
        [VoidBy] uniqueidentifier NULL,
        [VoidReason] nvarchar(max) NULL,
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [MDDriverId] int NOT NULL,
        [Name] nvarchar(max) NULL,
        CONSTRAINT [PK_Drivers] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200113153453_AddedDriverAndTruck')
BEGIN
    CREATE TABLE [Trucks] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [Void] bit NOT NULL,
        [VoidAt] datetime2 NULL,
        [VoidBy] uniqueidentifier NULL,
        [VoidReason] nvarchar(max) NULL,
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [MDTruckId] int NOT NULL,
        [Name] nvarchar(max) NULL,
        [LicensePlate] nvarchar(max) NULL,
        CONSTRAINT [PK_Trucks] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200113153453_AddedDriverAndTruck')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200113153453_AddedDriverAndTruck', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200114100616_AddedDriverLabels')
BEGIN
    ALTER TABLE [Drivers] ADD [Labels] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200114100616_AddedDriverLabels')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200114100616_AddedDriverLabels', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200117134733_AddedMessageStatus')
BEGIN
    DECLARE @var35 sysname;
    SELECT @var35 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Messages]') AND [c].[name] = N'Sent');
    IF @var35 IS NOT NULL EXEC(N'ALTER TABLE [Messages] DROP CONSTRAINT [' + @var35 + '];');
    ALTER TABLE [Messages] ALTER COLUMN [Sent] datetimeoffset NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200117134733_AddedMessageStatus')
BEGIN
    DECLARE @var36 sysname;
    SELECT @var36 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Messages]') AND [c].[name] = N'Received');
    IF @var36 IS NOT NULL EXEC(N'ALTER TABLE [Messages] DROP CONSTRAINT [' + @var36 + '];');
    ALTER TABLE [Messages] ALTER COLUMN [Received] datetimeoffset NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200117134733_AddedMessageStatus')
BEGIN
    DECLARE @var37 sysname;
    SELECT @var37 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Messages]') AND [c].[name] = N'Read');
    IF @var37 IS NOT NULL EXEC(N'ALTER TABLE [Messages] DROP CONSTRAINT [' + @var37 + '];');
    ALTER TABLE [Messages] ALTER COLUMN [Read] datetimeoffset NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200117134733_AddedMessageStatus')
BEGIN
    DECLARE @var38 sysname;
    SELECT @var38 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Messages]') AND [c].[name] = N'Created');
    IF @var38 IS NOT NULL EXEC(N'ALTER TABLE [Messages] DROP CONSTRAINT [' + @var38 + '];');
    ALTER TABLE [Messages] ALTER COLUMN [Created] datetimeoffset NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200117134733_AddedMessageStatus')
BEGIN
    ALTER TABLE [Messages] ADD [Status] nvarchar(max) NOT NULL DEFAULT N'';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200117134733_AddedMessageStatus')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200117134733_AddedMessageStatus', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200120165759_ChangedExportTask')
BEGIN
    ALTER TABLE [ExportTasks] DROP CONSTRAINT [FK_ExportTasks_OrderChains_OrderChainId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200120165759_ChangedExportTask')
BEGIN
    ALTER TABLE [ExportTasks] DROP CONSTRAINT [FK_ExportTasks_Orders_OrderId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200120165759_ChangedExportTask')
BEGIN
    DECLARE @var39 sysname;
    SELECT @var39 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[ExportTaskActions]') AND [c].[name] = N'ChassisName');
    IF @var39 IS NOT NULL EXEC(N'ALTER TABLE [ExportTaskActions] DROP CONSTRAINT [' + @var39 + '];');
    ALTER TABLE [ExportTaskActions] DROP COLUMN [ChassisName];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200120165759_ChangedExportTask')
BEGIN
    DECLARE @var40 sysname;
    SELECT @var40 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[ExportTasks]') AND [c].[name] = N'OrderId');
    IF @var40 IS NOT NULL EXEC(N'ALTER TABLE [ExportTasks] DROP CONSTRAINT [' + @var40 + '];');
    ALTER TABLE [ExportTasks] ALTER COLUMN [OrderId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200120165759_ChangedExportTask')
BEGIN
    DECLARE @var41 sysname;
    SELECT @var41 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[ExportTasks]') AND [c].[name] = N'OrderChainId');
    IF @var41 IS NOT NULL EXEC(N'ALTER TABLE [ExportTasks] DROP CONSTRAINT [' + @var41 + '];');
    ALTER TABLE [ExportTasks] ALTER COLUMN [OrderChainId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200120165759_ChangedExportTask')
BEGIN
    ALTER TABLE [ExportTaskActions] ADD [ChassisNumber] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200120165759_ChangedExportTask')
BEGIN
    ALTER TABLE [ExportTasks] ADD CONSTRAINT [FK_ExportTasks_OrderChains_OrderChainId] FOREIGN KEY ([OrderChainId]) REFERENCES [OrderChains] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200120165759_ChangedExportTask')
BEGIN
    ALTER TABLE [ExportTasks] ADD CONSTRAINT [FK_ExportTasks_Orders_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [Orders] ([Id]) ON DELETE NO ACTION;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200120165759_ChangedExportTask')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200120165759_ChangedExportTask', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200122143254_MadeMessageJobIdOptional')
BEGIN
    DECLARE @var42 sysname;
    SELECT @var42 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Messages]') AND [c].[name] = N'JobId');
    IF @var42 IS NOT NULL EXEC(N'ALTER TABLE [Messages] DROP CONSTRAINT [' + @var42 + '];');
    ALTER TABLE [Messages] ALTER COLUMN [JobId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200122143254_MadeMessageJobIdOptional')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200122143254_MadeMessageJobIdOptional', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200127141454_AddedTruckLabels')
BEGIN
    ALTER TABLE [Trucks] ADD [Labels] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200127141454_AddedTruckLabels')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200127141454_AddedTruckLabels', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200127153626_AddedLocationLabels')
BEGIN
    ALTER TABLE [Locations] ADD [Labels] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200127153626_AddedLocationLabels')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200127153626_AddedLocationLabels', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200131124620_AddedDriverLocations')
BEGIN
    CREATE TABLE [Driverlocations] (
        [DriverId] uniqueidentifier NOT NULL,
        [LocationId] uniqueidentifier NOT NULL,
        CONSTRAINT [PK_Driverlocations] PRIMARY KEY ([DriverId], [LocationId]),
        CONSTRAINT [FK_Driverlocations_Drivers_DriverId] FOREIGN KEY ([DriverId]) REFERENCES [Drivers] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_Driverlocations_Locations_LocationId] FOREIGN KEY ([LocationId]) REFERENCES [Locations] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200131124620_AddedDriverLocations')
BEGIN
    CREATE INDEX [IX_Driverlocations_LocationId] ON [Driverlocations] ([LocationId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200131124620_AddedDriverLocations')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200131124620_AddedDriverLocations', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200204135802_AddedDurationToOrder')
BEGIN
    ALTER TABLE [OrderActions] ADD [Duration] int NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200204135802_AddedDurationToOrder')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200204135802_AddedDurationToOrder', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200205101905_AddedDropForDelayToLocation')
BEGIN
    ALTER TABLE [Locations] ADD [DropForDelay] time NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200205101905_AddedDropForDelayToLocation')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200205101905_AddedDropForDelayToLocation', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200225143221_AddedUserSubject')
BEGIN
    CREATE TABLE [UserSubjects] (
        [UserId] int NOT NULL,
        [SubjectId] nvarchar(450) NOT NULL,
        CONSTRAINT [PK_UserSubjects] PRIMARY KEY ([SubjectId], [UserId])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200225143221_AddedUserSubject')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200225143221_AddedUserSubject', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200310133328_Added_ExportTaskAction_ActualReceived')
BEGIN
    ALTER TABLE [ExportTaskActions] ADD [ActualReceived] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200310133328_Added_ExportTaskAction_ActualReceived')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200310133328_Added_ExportTaskAction_ActualReceived', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200312100336_Added_Order_ReferenceId')
BEGIN
    ALTER TABLE [Orders] ADD [ReferenceId] int NOT NULL DEFAULT 0;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200312100336_Added_Order_ReferenceId')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200312100336_Added_Order_ReferenceId', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200318123733_Added_OrderClosure')
BEGIN
    CREATE TABLE [OrderClosure] (
        [OrderId] uniqueidentifier NOT NULL,
        [ClosureData] nvarchar(max) NULL,
        CONSTRAINT [PK_OrderClosure] PRIMARY KEY ([OrderId])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200318123733_Added_OrderClosure')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200318123733_Added_OrderClosure', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200319115003_Added_ExportTaskAction_Status')
BEGIN
    ALTER TABLE [OrderClosure] DROP CONSTRAINT [PK_OrderClosure];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200319115003_Added_ExportTaskAction_Status')
BEGIN
    EXEC sp_rename N'[OrderClosure]', N'OrderClosures';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200319115003_Added_ExportTaskAction_Status')
BEGIN
    ALTER TABLE [ExportTaskActions] ADD [Status] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200319115003_Added_ExportTaskAction_Status')
BEGIN
    ALTER TABLE [OrderClosures] ADD CONSTRAINT [PK_OrderClosures] PRIMARY KEY ([OrderId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200319115003_Added_ExportTaskAction_Status')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200319115003_Added_ExportTaskAction_Status', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200319174440_Changed_ExportTaskAction_Status')
BEGIN
    UPDATE ExportTaskActions SET Status = 'None' where Status IS NULL
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200319174440_Changed_ExportTaskAction_Status')
BEGIN
    DECLARE @var43 sysname;
    SELECT @var43 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[ExportTaskActions]') AND [c].[name] = N'Status');
    IF @var43 IS NOT NULL EXEC(N'ALTER TABLE [ExportTaskActions] DROP CONSTRAINT [' + @var43 + '];');
    ALTER TABLE [ExportTaskActions] ALTER COLUMN [Status] nvarchar(max) NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200319174440_Changed_ExportTaskAction_Status')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200319174440_Changed_ExportTaskAction_Status', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200323094748_Added_Order_PreviousProduct')
BEGIN
    ALTER TABLE [Orders] ADD [PreviousProduct] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200323094748_Added_Order_PreviousProduct')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200323094748_Added_Order_PreviousProduct', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200323094900_AddedIndex_ExportTaskAction_JobId')
BEGIN
    CREATE INDEX [IX_ExportTaskActions_JobId] ON [ExportTaskActions] ([JobId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200323094900_AddedIndex_ExportTaskAction_JobId')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200323094900_AddedIndex_ExportTaskAction_JobId', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200324150226_Removed_ExportTaskAction_ActualReceived')
BEGIN
    DECLARE @var44 sysname;
    SELECT @var44 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[ExportTaskActions]') AND [c].[name] = N'ActualReceived');
    IF @var44 IS NOT NULL EXEC(N'ALTER TABLE [ExportTaskActions] DROP CONSTRAINT [' + @var44 + '];');
    ALTER TABLE [ExportTaskActions] DROP COLUMN [ActualReceived];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200324150226_Removed_ExportTaskAction_ActualReceived')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200324150226_Removed_ExportTaskAction_ActualReceived', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200325092355_Added_ExportTaskAction_JobId2')
BEGIN
    ALTER TABLE [ExportTaskActions] ADD [JobId2] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200325092355_Added_ExportTaskAction_JobId2')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200325092355_Added_ExportTaskAction_JobId2', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200403174651_Added_Reasons')
BEGIN
    CREATE TABLE [Reasons] (
        [Id] uniqueidentifier NOT NULL DEFAULT ((NEWID())),
        [Void] bit NOT NULL,
        [VoidAt] datetime2 NULL,
        [VoidBy] uniqueidentifier NULL,
        [VoidReason] nvarchar(max) NULL,
        [CreatedAt] datetime2 NULL,
        [CreatedBy] uniqueidentifier NULL,
        [UpdatedAt] datetime2 NULL,
        [UpdatedBy] uniqueidentifier NULL,
        [Name] nvarchar(max) NULL,
        CONSTRAINT [PK_Reasons] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200403174651_Added_Reasons')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200403174651_Added_Reasons', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200406095743_Added_ExportTaskAction_RejectedOrderChainActionId')
BEGIN
    ALTER TABLE [ExportTaskActions] ADD [RejectedOrderChainActionId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200406095743_Added_ExportTaskAction_RejectedOrderChainActionId')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200406095743_Added_ExportTaskAction_RejectedOrderChainActionId', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200406103949_Added_Order_IsRejected')
BEGIN
    ALTER TABLE [Orders] ADD [IsRejected] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200406103949_Added_Order_IsRejected')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200406103949_Added_Order_IsRejected', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200406145626_Added_Order_RejectReasonId')
BEGIN
    ALTER TABLE [Orders] ADD [RejectReasonId] uniqueidentifier NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200406145626_Added_Order_RejectReasonId')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200406145626_Added_Order_RejectReasonId', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420083654_Changed_ExecutionNumber_NotNullable')
BEGIN
    DECLARE @var45 sysname;
    SELECT @var45 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Executions]') AND [c].[name] = N'Number');
    IF @var45 IS NOT NULL EXEC(N'ALTER TABLE [Executions] DROP CONSTRAINT [' + @var45 + '];');
    ALTER TABLE [Executions] ALTER COLUMN [Number] int NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420083654_Changed_ExecutionNumber_NotNullable')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200420083654_Changed_ExecutionNumber_NotNullable', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420090455_Changed_ExecutionActionLocation')
BEGIN
    delete ExecutionActionLocations
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420090455_Changed_ExecutionActionLocation')
BEGIN
    delete ExecutionRates
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420090455_Changed_ExecutionActionLocation')
BEGIN
    delete Executions
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420090455_Changed_ExecutionActionLocation')
BEGIN
    ALTER TABLE [ExecutionActionLocations] DROP CONSTRAINT [FK_ExecutionActionLocations_Executions_ExecutionId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420090455_Changed_ExecutionActionLocation')
BEGIN
    ALTER TABLE [ExecutionActionLocations] DROP CONSTRAINT [FK_ExecutionActionLocations_Locations_LocationId1];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420090455_Changed_ExecutionActionLocation')
BEGIN
    DROP INDEX [IX_ExecutionActionLocations_LocationId1] ON [ExecutionActionLocations];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420090455_Changed_ExecutionActionLocation')
BEGIN
    DECLARE @var46 sysname;
    SELECT @var46 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[ExecutionActionLocations]') AND [c].[name] = N'LocationId1');
    IF @var46 IS NOT NULL EXEC(N'ALTER TABLE [ExecutionActionLocations] DROP CONSTRAINT [' + @var46 + '];');
    ALTER TABLE [ExecutionActionLocations] DROP COLUMN [LocationId1];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420090455_Changed_ExecutionActionLocation')
BEGIN
    DECLARE @var47 sysname;
    SELECT @var47 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[ExecutionActionLocations]') AND [c].[name] = N'LocationId');
    IF @var47 IS NOT NULL EXEC(N'ALTER TABLE [ExecutionActionLocations] DROP CONSTRAINT [' + @var47 + '];');
    ALTER TABLE [ExecutionActionLocations] DROP COLUMN [LocationId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420090455_Changed_ExecutionActionLocation')
BEGIN
    ALTER TABLE [ExecutionActionLocations] ADD [LocationId] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420090455_Changed_ExecutionActionLocation')
BEGIN
    DECLARE @var48 sysname;
    SELECT @var48 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[ExecutionActionLocations]') AND [c].[name] = N'Sequence');
    IF @var48 IS NOT NULL EXEC(N'ALTER TABLE [ExecutionActionLocations] DROP CONSTRAINT [' + @var48 + '];');
    ALTER TABLE [ExecutionActionLocations] ALTER COLUMN [Sequence] int NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420090455_Changed_ExecutionActionLocation')
BEGIN
    DROP INDEX [IX_ExecutionActionLocations_ExecutionId] ON [ExecutionActionLocations];
    DECLARE @var49 sysname;
    SELECT @var49 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[ExecutionActionLocations]') AND [c].[name] = N'ExecutionId');
    IF @var49 IS NOT NULL EXEC(N'ALTER TABLE [ExecutionActionLocations] DROP CONSTRAINT [' + @var49 + '];');
    ALTER TABLE [ExecutionActionLocations] ALTER COLUMN [ExecutionId] uniqueidentifier NOT NULL;
    CREATE INDEX [IX_ExecutionActionLocations_ExecutionId] ON [ExecutionActionLocations] ([ExecutionId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420090455_Changed_ExecutionActionLocation')
BEGIN
    DECLARE @var50 sysname;
    SELECT @var50 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[ExecutionActionLocations]') AND [c].[name] = N'ActionId');
    IF @var50 IS NOT NULL EXEC(N'ALTER TABLE [ExecutionActionLocations] DROP CONSTRAINT [' + @var50 + '];');
    ALTER TABLE [ExecutionActionLocations] ALTER COLUMN [ActionId] int NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420090455_Changed_ExecutionActionLocation')
BEGIN
    CREATE INDEX [IX_ExecutionActionLocations_LocationId] ON [ExecutionActionLocations] ([LocationId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420090455_Changed_ExecutionActionLocation')
BEGIN
    ALTER TABLE [ExecutionActionLocations] ADD CONSTRAINT [FK_ExecutionActionLocations_Executions_ExecutionId] FOREIGN KEY ([ExecutionId]) REFERENCES [Executions] ([Id]) ON DELETE CASCADE;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420090455_Changed_ExecutionActionLocation')
BEGIN
    ALTER TABLE [ExecutionActionLocations] ADD CONSTRAINT [FK_ExecutionActionLocations_Locations_LocationId] FOREIGN KEY ([LocationId]) REFERENCES [Locations] ([Id]) ON DELETE CASCADE;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420090455_Changed_ExecutionActionLocation')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200420090455_Changed_ExecutionActionLocation', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420101319_Added_Executions_Number_Default')
BEGIN
    CREATE SEQUENCE [ExecutionNumbers] AS int START WITH 10 INCREMENT BY 1 NO MINVALUE NO MAXVALUE NO CYCLE;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420101319_Added_Executions_Number_Default')
BEGIN
    DECLARE @var51 sysname;
    SELECT @var51 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Executions]') AND [c].[name] = N'Number');
    IF @var51 IS NOT NULL EXEC(N'ALTER TABLE [Executions] DROP CONSTRAINT [' + @var51 + '];');
    ALTER TABLE [Executions] ADD DEFAULT (NEXT VALUE FOR ExecutionNumbers) FOR [Number];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200420101319_Added_Executions_Number_Default')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200420101319_Added_Executions_Number_Default', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200421125505_Added_Order_PreviousAdrClassUnNumber')
BEGIN
    ALTER TABLE [Orders] ADD [PreviousAdrClass] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200421125505_Added_Order_PreviousAdrClassUnNumber')
BEGIN
    ALTER TABLE [Orders] ADD [previousUnNumber] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200421125505_Added_Order_PreviousAdrClassUnNumber')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200421125505_Added_Order_PreviousAdrClassUnNumber', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200428100700_Renamed_Order_PreviousUnNumber')
BEGIN
    EXEC sp_rename N'[Orders].[previousUnNumber]', N'PreviousUnNumber', N'COLUMN';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200428100700_Renamed_Order_PreviousUnNumber')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200428100700_Renamed_Order_PreviousUnNumber', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200428100741_Removed_DepotLocation')
BEGIN
    with grpd (RelationId, Count) as
                                       (
                                           select RelationId, count(Id)
                                           from Locations
                                           where Void = 0
                                           group by RelationId
                                       )
                                       update Locations
                                       set LocationType = 'Location', 
                                           Void = case when g.Count > 1 then 1 else l.Void end, 
                                           UpdatedAt = GETDATE()
                                       from Locations l
                                       left join grpd g on l.RelationId = g.RelationId
                                       where l.LocationType like 'Depot%'
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200428100741_Removed_DepotLocation')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200428100741_Removed_DepotLocation', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200508152831_Removed_TerminalLocations')
BEGIN
    update Locations 
                                       set Void = 1, LocationType = 'Location'
                                       where LocationType like '%terminal%'
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200508152831_Removed_TerminalLocations')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200508152831_Removed_TerminalLocations', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200528160902_Added_OrderAction_RouteType')
BEGIN
    ALTER TABLE [OrderActions] ADD [RouteType] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200528160902_Added_OrderAction_RouteType')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200528160902_Added_OrderAction_RouteType', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200528163522_Added_MDPlace')
BEGIN
    IF OBJECT_ID (N'MD_Place', N'U') IS NULL THROW 50000, 'Please add MD_Place synonym', 1
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200528163522_Added_MDPlace')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200528163522_Added_MDPlace', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200529093941_Added_ExportTask_IsAdditionalInfoSent')
BEGIN
    ALTER TABLE [ExportTasks] ADD [IsAdditionalInfoSent] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200529093941_Added_ExportTask_IsAdditionalInfoSent')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200529093941_Added_ExportTask_IsAdditionalInfoSent', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    DROP INDEX [IX_Matrices_Active] ON [Matrices];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    DROP INDEX [IX_Matrices_ValidUntil] ON [Matrices];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    CREATE INDEX [IX_Products_TF1ProductId] ON [Products] ([TF1ProductId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    CREATE INDEX [IX_Products_Void] ON [Products] ([Void]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    CREATE INDEX [IX_Orders_Void] ON [Orders] ([Void]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    CREATE INDEX [IX_MatrixTarrifs_FromLocationId] ON [MatrixTarrifs] ([FromLocationId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    CREATE INDEX [IX_MatrixTarrifs_ToLocationId] ON [MatrixTarrifs] ([ToLocationId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    CREATE INDEX [IX_MatrixSurcharges_LocationId] ON [MatrixSurcharges] ([LocationId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    CREATE INDEX [IX_Matrices_Void_Active_ValidUntil] ON [Matrices] ([Void], [Active], [ValidUntil]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    CREATE INDEX [IX_Locations_RelationId] ON [Locations] ([RelationId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    CREATE INDEX [IX_Locations_Void] ON [Locations] ([Void]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    CREATE INDEX [IX_Executions_Void] ON [Executions] ([Void]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    CREATE INDEX [IX_ExecutionRates_ValidUntil] ON [ExecutionRates] ([ValidUntil]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    CREATE INDEX [IX_ExecutionActionLocations_ActionId] ON [ExecutionActionLocations] ([ActionId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    CREATE INDEX [IX_Drivers_Void] ON [Drivers] ([Void]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    CREATE INDEX [IX_Customers_RelationId] ON [Customers] ([RelationId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    CREATE INDEX [IX_Customers_Void] ON [Customers] ([Void]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200602160707_Added_Multiple_Indexes')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200602160707_Added_Multiple_Indexes', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200817081636_Dropped_OrderChainAction_JobId')
BEGIN
    DECLARE @var52 sysname;
    SELECT @var52 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[OrderChainActions]') AND [c].[name] = N'JobId');
    IF @var52 IS NOT NULL EXEC(N'ALTER TABLE [OrderChainActions] DROP CONSTRAINT [' + @var52 + '];');
    ALTER TABLE [OrderChainActions] DROP COLUMN [JobId];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200817081636_Dropped_OrderChainAction_JobId')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200817081636_Dropped_OrderChainAction_JobId', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200820110903_Added_OrderAction_ActionType')
BEGIN
    ALTER TABLE [OrderActions] ADD [ActionType] nvarchar(max) NOT NULL DEFAULT N'';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200820110903_Added_OrderAction_ActionType')
BEGIN
    UPDATE OrderActions
                                       SET ActionType = case when ma.Name = 0 then 'Load'
                                                             when ma.Name = 1 then 'Deliver'
                                                             when ma.Name = 2 then 'Depot'
                                                             when ma.Name = 3 then 'Clean'
                                                             when ma.Name = 4 then 'Route'
                                                             when ma.Name = 5 then 'Via'
                                                             when ma.Name = 6 then 'Pickup'
                                                             when ma.Name = 7 then 'Drop'
                                                             when ma.Name = 8 then 'Trucking'
                                                             when ma.Name = 9 then 'ClearingHouse'
                                                             when ma.Name = 10 then 'Swap'
                                                             when ma.Name = 11 then 'Reclean'
                                                             end
                                       FROM OrderActions AS oa 
                                       INNER JOIN MD_Action AS ma ON oa.ActionId = ma.Id
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200820110903_Added_OrderAction_ActionType')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200820110903_Added_OrderAction_ActionType', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200824110041_Added_OrderChainAction_ActionType')
BEGIN
    ALTER TABLE [OrderChainActions] ADD [ActionType] nvarchar(max) NOT NULL DEFAULT N'';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200824110041_Added_OrderChainAction_ActionType')
BEGIN
    UPDATE OrderChainActions
                                       SET ActionType = case when ma.Name = 0 then 'Load'
                                                             when ma.Name = 1 then 'Deliver'
                                                             when ma.Name = 2 then 'Depot'
                                                             when ma.Name = 3 then 'Clean'
                                                             when ma.Name = 4 then 'Route'
                                                             when ma.Name = 5 then 'Via'
                                                             when ma.Name = 6 then 'Pickup'
                                                             when ma.Name = 7 then 'Drop'
                                                             when ma.Name = 8 then 'Trucking'
                                                             when ma.Name = 9 then 'ClearingHouse'
                                                             when ma.Name = 10 then 'Swap'
                                                             when ma.Name = 11 then 'Reclean'
                                                             end
                                       FROM OrderChainActions AS oca 
                                       INNER JOIN MD_Action AS ma ON oca.ActionId = ma.Id
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200824110041_Added_OrderChainAction_ActionType')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200824110041_Added_OrderChainAction_ActionType', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201106134612_Added_OrderAction_IsReadyForPickupDrop')
BEGIN
    ALTER TABLE [OrderProducts] ADD [OrdProductId] int NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201106134612_Added_OrderAction_IsReadyForPickupDrop')
BEGIN
    ALTER TABLE [OrderActions] ADD [IsReadyForDrop] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201106134612_Added_OrderAction_IsReadyForPickupDrop')
BEGIN
    ALTER TABLE [OrderActions] ADD [IsReadyForPickup] bit NOT NULL DEFAULT CAST(0 AS bit);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201106134612_Added_OrderAction_IsReadyForPickupDrop')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20201106134612_Added_OrderAction_IsReadyForPickupDrop', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201109111346_Added_Order_ClientName')
BEGIN
    ALTER TABLE [Orders] ADD [ClientName] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201109111346_Added_Order_ClientName')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20201109111346_Added_Order_ClientName', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201113090711_Added_ExportTaskAction_Remarks')
BEGIN
    ALTER TABLE [ExportTaskActions] ADD [Remarks] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201113090711_Added_ExportTaskAction_Remarks')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20201113090711_Added_ExportTaskAction_Remarks', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201117115419_added_Product_Url')
BEGIN
    ALTER TABLE [Products] ADD [Url] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201117115419_added_Product_Url')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20201117115419_added_Product_Url', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201117140423_Set_Location_DropForDelay_Default_TimeSpanZero')
BEGIN
    DECLARE @var53 sysname;
    SELECT @var53 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Locations]') AND [c].[name] = N'DropForDelay');
    IF @var53 IS NOT NULL EXEC(N'ALTER TABLE [Locations] DROP CONSTRAINT [' + @var53 + '];');
    ALTER TABLE [Locations] ADD DEFAULT '00:00:00' FOR [DropForDelay];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201117140423_Set_Location_DropForDelay_Default_TimeSpanZero')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20201117140423_Set_Location_DropForDelay_Default_TimeSpanZero', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201117150756_Added_Location_ExtraPickupTime')
BEGIN
    ALTER TABLE [Locations] ADD [ExtraPickupDelay] time NULL DEFAULT '00:00:00';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201117150756_Added_Location_ExtraPickupTime')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20201117150756_Added_Location_ExtraPickupTime', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210201162042_Added_Matrix_LoadingDeliveryDemurrage')
BEGIN
    EXEC sp_rename N'[OrderChainActions].[Remarks]', N'Instructions', N'COLUMN';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210201162042_Added_Matrix_LoadingDeliveryDemurrage')
BEGIN
    ALTER TABLE [Matrices] ADD [LoadingDeliveryDemurrage] decimal(18,2) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210201162042_Added_Matrix_LoadingDeliveryDemurrage')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210201162042_Added_Matrix_LoadingDeliveryDemurrage', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210215171439_Added_ExecutionActionLocation_ActionType')
BEGIN
    EXEC sp_rename N'[OrderChainActions].[Instructions]', N'Remarks', N'COLUMN';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210215171439_Added_ExecutionActionLocation_ActionType')
BEGIN
    EXEC sp_rename N'[ExportTaskActions].[Remarks]', N'Instructions', N'COLUMN';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210215171439_Added_ExecutionActionLocation_ActionType')
BEGIN
    ALTER TABLE [ExecutionActionLocations] ADD [ActionType] nvarchar(max) NOT NULL DEFAULT N'';
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210215171439_Added_ExecutionActionLocation_ActionType')
BEGIN
    UPDATE ExecutionActionLocations
                                       SET ActionType = case when ma.Name = 0 then 'Load'
                                                             when ma.Name = 1 then 'Deliver'
                                                             when ma.Name = 2 then 'Depot'
                                                             when ma.Name = 3 then 'Clean'
                                                             when ma.Name = 4 then 'Route'
                                                             when ma.Name = 5 then 'Via'
                                                             when ma.Name = 6 then 'Pickup'
                                                             when ma.Name = 7 then 'Drop'
                                                             when ma.Name = 8 then 'Trucking'
                                                             when ma.Name = 9 then 'ClearingHouse'
                                                             when ma.Name = 10 then 'Swap'
                                                             when ma.Name = 11 then 'Reclean'
                                                             end
                                       FROM ExecutionActionLocations AS eal 
                                       INNER JOIN MD_Action AS ma ON eal.ActionId = ma.Id
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210215171439_Added_ExecutionActionLocation_ActionType')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210215171439_Added_ExecutionActionLocation_ActionType', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210217151431_Added_MatrixSurcharge_LoadingDeliveryFreeMinutes')
BEGIN
    ALTER TABLE [MatrixSurcharges] ADD [LoadingDeliveryFreeMinutes] int NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210217151431_Added_MatrixSurcharge_LoadingDeliveryFreeMinutes')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210217151431_Added_MatrixSurcharge_LoadingDeliveryFreeMinutes', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210708141221_Added_OrderAction_ChassisRequestedServiceDate')
BEGIN
    ALTER TABLE [OrderActions] ADD [ChassisRequestedServiceDate] datetime2 NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210708141221_Added_OrderAction_ChassisRequestedServiceDate')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210708141221_Added_OrderAction_ChassisRequestedServiceDate', N'5.0.8');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210708141511_Added_OrderProduct_CustomerDeliveryAddress')
BEGIN
    ALTER TABLE [OrderProducts] ADD [CustomerAddress_Address] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210708141511_Added_OrderProduct_CustomerDeliveryAddress')
BEGIN
    ALTER TABLE [OrderProducts] ADD [CustomerAddress_Country] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210708141511_Added_OrderProduct_CustomerDeliveryAddress')
BEGIN
    ALTER TABLE [OrderProducts] ADD [CustomerAddress_Name] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210708141511_Added_OrderProduct_CustomerDeliveryAddress')
BEGIN
    ALTER TABLE [OrderProducts] ADD [DeliveryAddress_Address] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210708141511_Added_OrderProduct_CustomerDeliveryAddress')
BEGIN
    ALTER TABLE [OrderProducts] ADD [DeliveryAddress_Country] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210708141511_Added_OrderProduct_CustomerDeliveryAddress')
BEGIN
    ALTER TABLE [OrderProducts] ADD [DeliveryAddress_Name] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210708141511_Added_OrderProduct_CustomerDeliveryAddress')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210708141511_Added_OrderProduct_CustomerDeliveryAddress', N'5.0.8');
END;
GO

COMMIT;
GO

