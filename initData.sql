CREATE DATABASE F1;

USE F1;

CREATE TABLE [dbo].[Team] (
    [IDTeam] INT NOT NULL IDENTITY(1,1),
    [name] VARCHAR(255) NOT NULL,
    [fullname] VARCHAR(255) NOT NULL,
    [chasis] VARCHAR(255) NOT NULL,
    [motor] VARCHAR(255) NOT NULL,
    PRIMARY KEY ([IDTeam])
);


INSERT INTO [dbo].[Team] ([name], [fullname], [chasis], [motor])
VALUES 
('Red Bull',     'Oracle Red Bull Racing',            'RB20',     'Honda'),
('Mercedes',     'Mercedes AMG Petronas F1 Team',     'W15',      'Mercedes'),
('Ferrari',      'Scuderia Ferrari HP',               'SF-24',    'Ferrari'),
('McLaren',      'McLaren Formula 1 Team',            'MCL38',    'Mercedes'),
('Aston Martin', 'Aston Martin Aramco F1 Team',       'AMR24',    'Mercedes'),
('Alpine',       'BWT Alpine F1 Team',                'A524',     'Renault'),
('Williams',     'Williams Racing',                   'FW46',     'Mercedes'),
('RB',           'Visa Cash App RB Formula One Team', 'VCARB 01', 'Honda'),
('Stake',        'Stake F1 Team Kick Sauber',         'C44',      'Ferrari'),
('Haas',         'MoneyGram Haas F1 Team',            'VF-24',    'Ferrari');

CREATE TABLE [dbo].[Driver] (
    [IDDriver] INT NOT NULL IDENTITY(1,1),
    [fullname] VARCHAR(255) NOT NULL,
    [number] VARCHAR(255) NOT NULL,
    [IDTeam] INT NOT NULL,
    PRIMARY KEY ([IDDriver]),
    FOREIGN KEY ([IDTeam]) REFERENCES [dbo].[Team]([IDTeam])
);


INSERT INTO [dbo].[Driver] ([fullname], [number], [IDTeam])
VALUES 
('Max Verstappen',   '1',  1),
('Sergio Pérez',     '11', 1),
('George Russell',   '63', 2),
('Lewis Hamilton',   '44', 2),
('Charles Leclerc',  '16', 3),
('Carlos Sainz',     '55', 3),
('Lando Norris',     '4',  4),
('Oscar Piastri',    '81', 4),
('Lance Stroll',     '18', 5),
('Fernando Alonso',  '14', 5),
('Esteban Ocon',     '31', 6),
('Pierre Gasly',     '10', 6),
('Alexander Albon',  '23', 7),
('Franco Colapinto', '43', 7),
('Yuki Tsunoda',     '22', 8),
('Liam Lawson',      '30', 8),
('Valtteri Bottas',  '77', 9),
('Guanyu Zhou',      '24', 9),
('Kevin Magnussen',  '20', 10),
('Nico Hülkenberg',  '27', 10);
