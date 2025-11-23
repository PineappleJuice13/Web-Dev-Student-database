/*
	Creator: Jayda H
    File Name: 05_insert_users_data.sql
    Date: Oct 06, 2025
    Description: This script will populate the users table
    Code: INFT2100
*/

CREATE EXTENSION IF NOT EXISTS pgcrypto;
INSERT INTO users (user_id, first_name, last_name, email, birth_date, created_at, last_access, password) 

VALUES
    (100978094,
	'Jayda', 
	'Hickey', 
	'jayda.hickey@dcmail.ca', 
	'2006-08-13', 
	'2025-09-26', 
	'2025-09-26 15:11:20', 
	crypt('HiWorld', gen_salt('bf'))
	),

    (100900000, 'Denise', 'Vasquez', 'denise.vasquez@example.com', '1997-05-12', '2024-05-07', '2024-09-18', crypt('DVasquez@91!', gen_salt('bf')) ),
    (100900001, 'Wendy', 'Anderson', 'wendy.anderson@example.com', '2003-09-06', '2025-05-13', '2025-06-18', crypt('WAnderson@53!', gen_salt('bf')) ),
    (100900002, 'April', 'James', 'april.james@example.com', '2004-09-02', '2023-10-30', '2024-03-23', crypt('AJames@89!', gen_salt('bf')) ),
    (100900003, 'Randy', 'Joseph', 'randy.joseph@example.com', '2005-03-01', '2024-07-14', '2025-07-05', crypt('RJoseph@39!', gen_salt('bf')) ),
    (100900004, 'Michael', 'Ayala', 'michael.ayala@example.com', '1990-11-18', '2025-08-30', '2025-10-05', crypt('MAyala@61!', gen_salt('bf')) ),
    (100900005, 'Carol', 'Molina', 'carol.molina@example.com', '1996-12-24', '2024-11-03', '2025-04-18', crypt('CMolina@89!', gen_salt('bf')) ),
    (100900006, 'Hannah', 'Davis', 'hannah.davis@example.com', '2005-04-18', '2024-07-07', '2025-01-30', crypt('HDavis@77!', gen_salt('bf')) ),
    (100900007, 'Kyle', 'Williams', 'kyle.williams@example.com', '2005-06-07', '2024-04-16', '2025-05-30', crypt('KWilliams@76!', gen_salt('bf')) ),
    (100900008, 'Frank', 'Marsh', 'frank.marsh@example.com', '1993-10-25', '2025-01-20', '2025-03-03', crypt('FMarsh@77!', gen_salt('bf')) ),
    (100900009, 'Shannon', 'Barker', 'shannon.barker@example.com', '1999-01-06', '2025-04-13', '2025-07-21', crypt('SBarker@44!', gen_salt('bf')) ),
    (100900010, 'Amanda', 'Gonzalez', 'amanda.gonzalez@example.com', '2004-11-12', '2025-06-15', '2025-09-17', crypt('AGonzalez@21!', gen_salt('bf')) ),
    (100900011, 'James', 'Carlson', 'james.carlson@example.com', '1995-07-06', '2025-02-28', '2025-06-29', crypt('JCarlson@42!', gen_salt('bf')) ),
    (100900012, 'Evan', 'Williams', 'evan.williams@example.com', '1994-04-18', '2025-07-21', '2025-07-22', crypt('EWilliams@35!', gen_salt('bf')) ),
    (100900013, 'Angel', 'Cooley', 'angel.cooley@example.com', '1992-04-10', '2025-09-25', '2025-10-01', crypt('ACooley@19!', gen_salt('bf')) ),
    (100900014, 'Janice', 'Hamilton', 'janice.hamilton@example.com', '1996-09-11', '2025-08-30', '2025-09-26', crypt('JHamilton@25!', gen_salt('bf')) ),
    (100900015, 'Hannah', 'Cross', 'hannah.cross@example.com', '1998-02-01', '2024-06-12', '2025-06-10', crypt('HCross@30!', gen_salt('bf')) ),
    (100900016, 'John', 'Hogan', 'john.hogan@example.com', '2003-07-22', '2023-12-09', '2025-05-10', crypt('JHogan@60!', gen_salt('bf')) ),
    (100900017, 'Angela', 'Greene', 'angela.greene@example.com', '2002-08-23', '2023-10-20', '2024-07-24', crypt('AGreene@55!', gen_salt('bf')) ),
    (100900018, 'Gregory', 'Powell', 'gregory.powell@example.com', '1990-09-29', '2024-05-23', '2025-06-06', crypt('GPowell@73!', gen_salt('bf')) ),
    (100900019, 'Jonathan', 'Kennedy', 'jonathan.kennedy@example.com', '1997-01-10', '2024-03-12', '2024-04-13', crypt('JKennedy@32!', gen_salt('bf')) ),
    (100900020, 'Meghan', 'Williams', 'meghan.williams@example.com', '2005-09-14', '2025-06-08', '2025-08-27', crypt('MWilliams@48!', gen_salt('bf')) ),
    (100900021, 'Cody', 'Morris', 'cody.morris@example.com', '1991-02-01', '2024-04-18', '2025-06-12', crypt('CMorris@42!', gen_salt('bf')) ),
    (100900022, 'Crystal', 'Mccarthy', 'crystal.mccarthy@example.com', '1994-09-29', '2025-04-02', '2025-06-18', crypt('CMccarthy@46!', gen_salt('bf')) ),
    (100900023, 'Billy', 'Hudson', 'billy.hudson@example.com', '1991-07-19', '2024-06-23', '2024-07-24', crypt('BHudson@18!', gen_salt('bf')) ),
    (100900024, 'Connie', 'Smith', 'connie.smith@example.com', '1992-07-10', '2024-08-28', '2025-01-07', crypt('CSmith@24!', gen_salt('bf')) ),
    (100900025, 'John', 'Franco', 'john.franco@example.com', '1995-06-23', '2024-05-26', '2025-03-11', crypt('JFranco@12!', gen_salt('bf')) ),
    (100900026, 'Michael', 'Graham', 'michael.graham@example.com', '1994-02-28', '2024-02-18', '2024-05-17', crypt('MGraham@11!', gen_salt('bf')) ),
    (100900027, 'Kevin', 'Carr', 'kevin.carr@example.com', '1990-12-31', '2025-06-03', '2025-06-13', crypt('KCarr@25!', gen_salt('bf')) ),
    (100900028, 'Samuel', 'Zimmerman', 'samuel.zimmerman@example.com', '1996-02-07', '2023-11-24', '2024-11-28', crypt('SZimmerman@21!', gen_salt('bf')) ),
    (100900029, 'Matthew', 'Kelly', 'matthew.kelly@example.com', '2006-05-21', '2024-01-14', '2025-05-25', crypt('MKelly@17!', gen_salt('bf')) ),
    (100900030, 'Maria', 'Blackwell', 'maria.blackwell@example.com', '1997-11-21', '2024-03-31', '2025-04-25', crypt('MBlackwell@16!', gen_salt('bf')) ),
    (100900031, 'Lauren', 'Morgan', 'lauren.morgan@example.com', '2004-03-11', '2024-11-27', '2024-12-26', crypt('LMorgan@31!', gen_salt('bf')) ),
    (100900032, 'David', 'Wade', 'david.wade@example.com', '1991-09-02', '2024-03-12', '2024-04-05', crypt('DWade@90!', gen_salt('bf')) ),
    (100900033, 'Travis', 'Holt', 'travis.holt@example.com', '2003-04-06', '2024-11-22', '2025-04-05', crypt('THolt@28!', gen_salt('bf')) ),
    (100900034, 'Heather', 'Garcia', 'heather.garcia@example.com', '2003-06-25', '2024-12-28', '2025-02-16', crypt('HGarcia@18!', gen_salt('bf')) ),
    (100900035, 'Ryan', 'Harmon', 'ryan.harmon@example.com', '2000-01-23', '2024-10-26', '2025-07-23', crypt('RHarmon@84!', gen_salt('bf')) ),
    (100900036, 'Charles', 'Carpenter', 'charles.carpenter@example.com', '1992-11-12', '2024-12-07', '2025-09-08', crypt('CCarpenter@77!', gen_salt('bf')) ),
    (100900037, 'Tiffany', 'Salazar', 'tiffany.salazar@example.com', '1992-03-01', '2024-10-03', '2025-04-06', crypt('TSalazar@33!', gen_salt('bf')) ),
    (100900038, 'Joseph', 'Murray', 'joseph.murray@example.com', '1998-11-25', '2024-07-16', '2025-05-13', crypt('JMurray@23!', gen_salt('bf')) ),
    (100900039, 'Chad', 'Kirk', 'chad.kirk@example.com', '2003-01-21', '2024-09-09', '2025-09-17', crypt('CKirk@92!', gen_salt('bf')) ),
    (100900040, 'Elizabeth', 'White', 'elizabeth.white@example.com', '2006-03-08', '2025-07-27', '2025-08-30', crypt('EWhite@63!', gen_salt('bf')) ),
    (100900041, 'Kevin', 'Bell', 'kevin.bell@example.com', '2000-12-03', '2024-07-12', '2024-10-16', crypt('KBell@66!', gen_salt('bf')) ),
    (100900042, 'Sarah', 'Moses', 'sarah.moses@example.com', '2003-07-05', '2025-07-30', '2025-08-17', crypt('SMoses@65!', gen_salt('bf')) ),
    (100900043, 'Christopher', 'Romero', 'christopher.romero@example.com', '2007-07-25', '2025-03-09', '2025-09-28', crypt('CRomero@52!', gen_salt('bf')) ),
    (100900044, 'Erica', 'Walker', 'erica.walker@example.com', '1989-10-27', '2025-01-18', '2025-05-21', crypt('EWalker@17!', gen_salt('bf')) ),
    (100900045, 'William', 'Nguyen', 'william.nguyen@example.com', '2006-10-17', '2023-12-18', '2025-03-25', crypt('WNguyen@95!', gen_salt('bf')) ),
    (100900046, 'Kimberly', 'Armstrong', 'kimberly.armstrong@example.com', '2002-12-15', '2025-02-03', '2025-08-09', crypt('KArmstrong@71!', gen_salt('bf')) ),
    (100900047, 'Kimberly', 'Buckley', 'kimberly.buckley@example.com', '2001-10-04', '2023-10-24', '2024-05-11', crypt('KBuckley@69!', gen_salt('bf')) ),
    (100900048, 'Diana', 'Michael', 'diana.michael@example.com', '1993-10-17', '2024-07-01', '2024-10-14', crypt('DMichael@10!', gen_salt('bf')) ),
    (100900049, 'Cameron', 'Curtis', 'cameron.curtis@example.com', '1996-06-15', '2024-10-10', '2025-04-26', crypt('CCurtis@63!', gen_salt('bf')) );
