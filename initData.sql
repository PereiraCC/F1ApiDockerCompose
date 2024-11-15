CREATE DATABASE F1;


USE F1;


CREATE TABLE [dbo].[Team] (
    [IDTeam] INT NOT NULL IDENTITY(1,1),
    [name] VARCHAR(255) NOT NULL,
    [fullname] VARCHAR(255) NOT NULL,
    [chasis] VARCHAR(255) NOT NULL,
    [motor] VARCHAR(255) NOT NULL,
    [srcImage] VARCHAR(2000) NULL,
    PRIMARY KEY ([IDTeam])
);


INSERT INTO [dbo].[Team] ([name], [fullname], [chasis], [motor], [srcImage])
VALUES 
('Red Bull',     'Oracle Red Bull Racing',            'RB20',     'Honda',     'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/2018-redesign-assets/team%20logos/red%20bull'            ),
('Mercedes',     'Mercedes AMG Petronas F1 Team',     'W15',      'Mercedes',  'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/2018-redesign-assets/team%20logos/mercedes'              ),
('Ferrari',      'Scuderia Ferrari HP',               'SF-24',    'Ferrari',   'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/2018-redesign-assets/team%20logos/ferrari'               ),
('McLaren',      'McLaren Formula 1 Team',            'MCL38',    'Mercedes',  'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/2018-redesign-assets/team%20logos/mclaren'               ),
('Aston Martin', 'Aston Martin Aramco F1 Team',       'AMR24',    'Mercedes',  'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/2018-redesign-assets/team%20logos/aston%20martin%202024' ),
('Alpine',       'BWT Alpine F1 Team',                'A524',     'Renault',   'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/2018-redesign-assets/team%20logos/alpine'                ),
('Williams',     'Williams Racing',                   'FW46',     'Mercedes',  'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/2018-redesign-assets/team%20logos/williams'              ),
('RB',           'Visa Cash App RB Formula One Team', 'VCARB 01', 'Honda',     'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/2018-redesign-assets/team%20logos/rb'                    ),
('Stake',        'Stake F1 Team Kick Sauber',         'C44',      'Ferrari',   'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/2018-redesign-assets/team%20logos/kick%20sauber'         ),
('Haas',         'MoneyGram Haas F1 Team',            'VF-24',    'Ferrari',   'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/2018-redesign-assets/team%20logos/haas'                  );


CREATE TABLE [dbo].[Driver] (
    [IDDriver] INT NOT NULL IDENTITY(1,1),
    [fullname] VARCHAR(255) NOT NULL,
    [number] VARCHAR(255) NOT NULL,
    [IDTeam] INT NOT NULL,
    [srcImage] VARCHAR(2000) null,
    PRIMARY KEY ([IDDriver]),
    FOREIGN KEY ([IDTeam]) REFERENCES [dbo].[Team]([IDTeam])
);


INSERT INTO [dbo].[Driver] ([fullname], [number], [IDTeam], [srcImage])
VALUES 
('Max Verstappen',   '1',  1, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/drivers/2024Drivers/verstappen'),
('Sergio Pérez',     '11', 1, 'https://media.formula1.com/image/upload/v1712849107/content/dam/fom-website/drivers/2024Drivers/perez.png'),
('George Russell',   '63', 2, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/drivers/2024Drivers/russell'),
('Lewis Hamilton',   '44', 2, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/drivers/2024Drivers/hamilton'),
('Charles Leclerc',  '16', 3, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/drivers/2024Drivers/leclerc'),
('Carlos Sainz',     '55', 3, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/drivers/2024Drivers/sainz'),
('Lando Norris',     '4',  4, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/drivers/2024Drivers/norris'),
('Oscar Piastri',    '81', 4, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/drivers/2024Drivers/piastri'),
('Lance Stroll',     '18', 5, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_auto,w_1320/content/dam/fom-website/drivers/2024Drivers/stroll'),
('Fernando Alonso',  '14', 5, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/drivers/2024Drivers/alonso'),
('Esteban Ocon',     '31', 6, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/drivers/2024Drivers/ocon'),
('Pierre Gasly',     '10', 6, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/drivers/2024Drivers/gasly'),
('Alexander Albon',  '23', 7, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/drivers/2024Drivers/albon'),
('Franco Colapinto', '43', 7, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_auto,w_1320/content/dam/fom-website/drivers/2024Drivers/colapinto'),
('Yuki Tsunoda',     '22', 8, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/drivers/2024Drivers/tsunoda'),
('Liam Lawson',      '30', 8, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_auto,w_1320/content/dam/fom-website/drivers/2024Drivers/lawson'),
('Valtteri Bottas',  '77', 9, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/drivers/2024Drivers/bottas'),
('Guanyu Zhou',      '24', 9, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/drivers/2024Drivers/zhou'),
('Kevin Magnussen',  '20', 10, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/drivers/2024Drivers/magnussen'),
('Nico Hülkenberg',  '27', 10, 'https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/drivers/2024Drivers/hulkenberg');

