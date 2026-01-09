-- Seed providers
INSERT INTO providers (provider_id, provider_name, specialty, active, created_at) VALUES
(1,  'Dr. Maya Chen',        'Primary Care',   true, now() - interval '120 days'),
(2,  'Dr. Rafael Alvarez',   'Primary Care',   true, now() - interval '210 days'),
(3,  'Dr. Priya Nair',       'Primary Care',   true, now() - interval '95 days'),
(4,  'Dr. Jordan Brooks',    'Endocrinology',  true, now() - interval '180 days'),
(5,  'Dr. Elena Park',       'Primary Care',   true, now() - interval '160 days'), -- degrades
(6,  'Dr. Samuel Wright',    'Endocrinology',  true, now() - interval '300 days'),
(7,  'Dr. Aisha Khan',       'Psychiatry',     true, now() - interval '140 days'),
(8,  'Dr. Minh Tran',        'Psychiatry',     true, now() - interval '200 days'), -- degrades
(9,  'Dr. Lucas Romero',     'Primary Care',   true, now() - interval '260 days'),
(10, 'Dr. Sofia Patel',      'Endocrinology',  true, now() - interval '110 days');

-- Seed appointments
INSERT INTO appointments
(appointment_id, provider_id, scheduled_time, appointment_date, response_time_minutes, completed, created_at)
VALUES
-- Provider 1 (strong) - Primary Care
(1001,1,  now()-interval '59 days' + interval '09:10', (now()-interval '59 days')::date,  8, true,  now()-interval '60 days'),
(1002,1,  now()-interval '58 days' + interval '13:40', (now()-interval '58 days')::date, NULL, true, now()-interval '59 days'),
(1003,1,  now()-interval '57 days' + interval '10:20', (now()-interval '57 days')::date,  6, true,  now()-interval '58 days'),
(1004,1,  now()-interval '55 days' + interval '15:10', (now()-interval '55 days')::date, 11, true,  now()-interval '56 days'),
(1005,1,  now()-interval '53 days' + interval '09:40', (now()-interval '53 days')::date,  7, true,  now()-interval '54 days'),
(1006,1,  now()-interval '50 days' + interval '14:20', (now()-interval '50 days')::date, 10, true,  now()-interval '51 days'),
(1007,1,  now()-interval '47 days' + interval '11:30', (now()-interval '47 days')::date, 12, true,  now()-interval '48 days'),
(1008,1,  now()-interval '44 days' + interval '16:00', (now()-interval '44 days')::date,  9, true,  now()-interval '45 days'),
(1009,1,  now()-interval '41 days' + interval '09:20', (now()-interval '41 days')::date,  6, true,  now()-interval '42 days'),
(1010,1,  now()-interval '38 days' + interval '13:10', (now()-interval '38 days')::date, NULL, true, now()-interval '39 days'),
(1011,1,  now()-interval '35 days' + interval '10:50', (now()-interval '35 days')::date,  7, true,  now()-interval '36 days'),
(1012,1,  now()-interval '32 days' + interval '15:30', (now()-interval '32 days')::date,  9, true,  now()-interval '33 days'),
(1013,1,  now()-interval '29 days' + interval '09:00', (now()-interval '29 days')::date,  5, true,  now()-interval '30 days'),
(1014,1,  now()-interval '26 days' + interval '14:40', (now()-interval '26 days')::date,  8, true,  now()-interval '27 days'),
(1015,1,  now()-interval '23 days' + interval '11:10', (now()-interval '23 days')::date, 13, true,  now()-interval '24 days'),
(1016,1,  now()-interval '20 days' + interval '16:20', (now()-interval '20 days')::date, 10, true,  now()-interval '21 days'),
(1017,1,  now()-interval '17 days' + interval '09:30', (now()-interval '17 days')::date,  7, true,  now()-interval '18 days'),
(1018,1,  now()-interval '14 days' + interval '13:50', (now()-interval '14 days')::date,  9, true,  now()-interval '15 days'),

-- Provider 2 (strong) - Primary Care
(1019,2,  now()-interval '59 days' + interval '10:00', (now()-interval '59 days')::date,  9, true,  now()-interval '60 days'),
(1020,2,  now()-interval '56 days' + interval '14:10', (now()-interval '56 days')::date, 12, true,  now()-interval '57 days'),
(1021,2,  now()-interval '54 days' + interval '09:50', (now()-interval '54 days')::date,  6, true,  now()-interval '55 days'),
(1022,2,  now()-interval '52 days' + interval '15:40', (now()-interval '52 days')::date, NULL, true, now()-interval '53 days'),
(1023,2,  now()-interval '49 days' + interval '11:20', (now()-interval '49 days')::date,  8, true,  now()-interval '50 days'),
(1024,2,  now()-interval '46 days' + interval '16:10', (now()-interval '46 days')::date,  7, true,  now()-interval '47 days'),
(1025,2,  now()-interval '43 days' + interval '09:30', (now()-interval '43 days')::date, 10, true,  now()-interval '44 days'),
(1026,2,  now()-interval '40 days' + interval '13:20', (now()-interval '40 days')::date, 11, true,  now()-interval '41 days'),
(1027,2,  now()-interval '37 days' + interval '10:40', (now()-interval '37 days')::date,  6, true,  now()-interval '38 days'),
(1028,2,  now()-interval '34 days' + interval '15:10', (now()-interval '34 days')::date,  8, true,  now()-interval '35 days'),
(1029,2,  now()-interval '31 days' + interval '09:10', (now()-interval '31 days')::date, NULL, true, now()-interval '32 days'),
(1030,2,  now()-interval '28 days' + interval '14:00', (now()-interval '28 days')::date,  9, true,  now()-interval '29 days'),
(1031,2,  now()-interval '25 days' + interval '11:50', (now()-interval '25 days')::date, 13, true,  now()-interval '26 days'),
(1032,2,  now()-interval '22 days' + interval '16:30', (now()-interval '22 days')::date, 12, true,  now()-interval '23 days'),
(1033,2,  now()-interval '19 days' + interval '09:40', (now()-interval '19 days')::date,  7, true,  now()-interval '20 days'),
(1034,2,  now()-interval '16 days' + interval '13:30', (now()-interval '16 days')::date, 10, true,  now()-interval '17 days'),

-- Provider 3 (average) - Primary Care
(1035,3,  now()-interval '58 days' + interval '09:20', (now()-interval '58 days')::date, 16, true,  now()-interval '59 days'),
(1036,3,  now()-interval '56 days' + interval '15:00', (now()-interval '56 days')::date, NULL, true, now()-interval '57 days'),
(1037,3,  now()-interval '54 days' + interval '11:10', (now()-interval '54 days')::date, 18, true,  now()-interval '55 days'),
(1038,3,  now()-interval '51 days' + interval '16:10', (now()-interval '51 days')::date, 22, true,  now()-interval '52 days'),
(1039,3,  now()-interval '48 days' + interval '09:40', (now()-interval '48 days')::date, 19, true,  now()-interval '49 days'),
(1040,3,  now()-interval '45 days' + interval '13:30', (now()-interval '45 days')::date, 17, true,  now()-interval '46 days'),
(1041,3,  now()-interval '42 days' + interval '10:50', (now()-interval '42 days')::date, 21, true,  now()-interval '43 days'),
(1042,3,  now()-interval '39 days' + interval '15:20', (now()-interval '39 days')::date, NULL, true, now()-interval '40 days'),
(1043,3,  now()-interval '36 days' + interval '09:10', (now()-interval '36 days')::date, 15, true,  now()-interval '37 days'),
(1044,3,  now()-interval '33 days' + interval '14:40', (now()-interval '33 days')::date, 20, true,  now()-interval '34 days'),
(1045,3,  now()-interval '30 days' + interval '11:30', (now()-interval '30 days')::date, 18, true,  now()-interval '31 days'),
(1046,3,  now()-interval '27 days' + interval '16:00', (now()-interval '27 days')::date, 24, false, now()-interval '28 days'),
(1047,3,  now()-interval '24 days' + interval '09:50', (now()-interval '24 days')::date, 17, true,  now()-interval '25 days'),
(1048,3,  now()-interval '21 days' + interval '13:10', (now()-interval '21 days')::date, 19, true,  now()-interval '22 days'),

-- Provider 4 (average) - Endocrinology
(1049,4,  now()-interval '59 days' + interval '10:30', (now()-interval '59 days')::date, 18, true,  now()-interval '60 days'),
(1050,4,  now()-interval '57 days' + interval '14:20', (now()-interval '57 days')::date, 21, true,  now()-interval '58 days'),
(1051,4,  now()-interval '55 days' + interval '09:10', (now()-interval '55 days')::date, NULL, true, now()-interval '56 days'),
(1052,4,  now()-interval '52 days' + interval '15:40', (now()-interval '52 days')::date, 23, true,  now()-interval '53 days'),
(1053,4,  now()-interval '49 days' + interval '11:50', (now()-interval '49 days')::date, 19, true,  now()-interval '50 days'),
(1054,4,  now()-interval '46 days' + interval '16:20', (now()-interval '46 days')::date, 24, true,  now()-interval '47 days'),
(1055,4,  now()-interval '43 days' + interval '09:40', (now()-interval '43 days')::date, 20, true,  now()-interval '44 days'),
(1056,4,  now()-interval '40 days' + interval '13:30', (now()-interval '40 days')::date, 22, true,  now()-interval '41 days'),
(1057,4,  now()-interval '37 days' + interval '10:10', (now()-interval '37 days')::date, NULL, true, now()-interval '38 days'),
(1058,4,  now()-interval '34 days' + interval '15:00', (now()-interval '34 days')::date, 26, false, now()-interval '35 days'),
(1059,4,  now()-interval '31 days' + interval '11:20', (now()-interval '31 days')::date, 21, true,  now()-interval '32 days'),
(1060,4,  now()-interval '28 days' + interval '16:10', (now()-interval '28 days')::date, 24, true,  now()-interval '29 days'),

-- Provider 5 (degrading) - Primary Care
-- Early: 12–18 min, high completion; Late: 35–55 min, more incomplete, more NULLs
(1061,5,  now()-interval '59 days' + interval '09:00', (now()-interval '59 days')::date, 14, true,  now()-interval '60 days'),
(1062,5,  now()-interval '57 days' + interval '13:20', (now()-interval '57 days')::date, 16, true,  now()-interval '58 days'),
(1063,5,  now()-interval '55 days' + interval '10:40', (now()-interval '55 days')::date, NULL, true, now()-interval '56 days'),
(1064,5,  now()-interval '52 days' + interval '15:10', (now()-interval '52 days')::date, 18, true,  now()-interval '53 days'),
(1065,5,  now()-interval '49 days' + interval '09:30', (now()-interval '49 days')::date, 17, true,  now()-interval '50 days'),
(1066,5,  now()-interval '45 days' + interval '14:00', (now()-interval '45 days')::date, 22, true,  now()-interval '46 days'),
(1067,5,  now()-interval '42 days' + interval '11:10', (now()-interval '42 days')::date, 28, true,  now()-interval '43 days'),
(1068,5,  now()-interval '39 days' + interval '16:20', (now()-interval '39 days')::date, NULL, true, now()-interval '40 days'),
(1069,5,  now()-interval '35 days' + interval '09:50', (now()-interval '35 days')::date, 33, true,  now()-interval '36 days'),
(1070,5,  now()-interval '32 days' + interval '13:40', (now()-interval '32 days')::date, 37, true,  now()-interval '33 days'),
(1071,5,  now()-interval '29 days' + interval '10:20', (now()-interval '29 days')::date, 41, true,  now()-interval '30 days'),
(1072,5,  now()-interval '26 days' + interval '15:30', (now()-interval '26 days')::date, 45, false, now()-interval '27 days'),
(1073,5,  now()-interval '23 days' + interval '09:10', (now()-interval '23 days')::date, NULL, false, now()-interval '24 days'),
(1074,5,  now()-interval '20 days' + interval '14:10', (now()-interval '20 days')::date, 52, true,  now()-interval '21 days'),
(1075,5,  now()-interval '17 days' + interval '11:30', (now()-interval '17 days')::date, 48, false, now()-interval '18 days'),
(1076,5,  now()-interval '14 days' + interval '16:00', (now()-interval '14 days')::date, 55, false, now()-interval '15 days'),

-- Provider 6 (strong) - Endocrinology
(1077,6,  now()-interval '58 days' + interval '10:00', (now()-interval '58 days')::date,  9, true,  now()-interval '59 days'),
(1078,6,  now()-interval '56 days' + interval '14:30', (now()-interval '56 days')::date,  7, true,  now()-interval '57 days'),
(1079,6,  now()-interval '54 days' + interval '09:20', (now()-interval '54 days')::date, NULL, true, now()-interval '55 days'),
(1080,6,  now()-interval '51 days' + interval '15:10', (now()-interval '51 days')::date, 11, true,  now()-interval '52 days'),
(1081,6,  now()-interval '48 days' + interval '11:40', (now()-interval '48 days')::date,  8, true,  now()-interval '49 days'),
(1082,6,  now()-interval '45 days' + interval '16:20', (now()-interval '45 days')::date, 10, true,  now()-interval '46 days'),
(1083,6,  now()-interval '42 days' + interval '09:30', (now()-interval '42 days')::date,  6, true,  now()-interval '43 days'),
(1084,6,  now()-interval '39 days' + interval '13:50', (now()-interval '39 days')::date, 12, true,  now()-interval '40 days'),
(1085,6,  now()-interval '36 days' + interval '10:10', (now()-interval '36 days')::date,  9, true,  now()-interval '37 days'),
(1086,6,  now()-interval '33 days' + interval '15:30', (now()-interval '33 days')::date, NULL, true, now()-interval '34 days'),
(1087,6,  now()-interval '30 days' + interval '11:20', (now()-interval '30 days')::date,  7, true,  now()-interval '31 days'),
(1088,6,  now()-interval '27 days' + interval '16:10', (now()-interval '27 days')::date,  8, true,  now()-interval '28 days'),

-- Provider 7 (average) - Psychiatry (moderate delays, good completion)
(1089,7,  now()-interval '59 days' + interval '09:40', (now()-interval '59 days')::date, 18, true,  now()-interval '60 days'),
(1090,7,  now()-interval '57 days' + interval '13:10', (now()-interval '57 days')::date, 22, true,  now()-interval '58 days'),
(1091,7,  now()-interval '55 days' + interval '10:30', (now()-interval '55 days')::date, NULL, true, now()-interval '56 days'),
(1092,7,  now()-interval '52 days' + interval '15:50', (now()-interval '52 days')::date, 24, true,  now()-interval '53 days'),
(1093,7,  now()-interval '49 days' + interval '09:20', (now()-interval '49 days')::date, 20, true,  now()-interval '50 days'),
(1094,7,  now()-interval '46 days' + interval '14:40', (now()-interval '46 days')::date, 25, true,  now()-interval '47 days'),
(1095,7,  now()-interval '43 days' + interval '11:10', (now()-interval '43 days')::date, 19, true,  now()-interval '44 days'),
(1096,7,  now()-interval '40 days' + interval '16:10', (now()-interval '40 days')::date, 27, false, now()-interval '41 days'),
(1097,7,  now()-interval '37 days' + interval '09:50', (now()-interval '37 days')::date, 21, true,  now()-interval '38 days'),
(1098,7,  now()-interval '34 days' + interval '13:30', (now()-interval '34 days')::date, NULL, true, now()-interval '35 days'),
(1099,7,  now()-interval '31 days' + interval '10:40', (now()-interval '31 days')::date, 23, true,  now()-interval '32 days'),
(1100,7,  now()-interval '28 days' + interval '15:20', (now()-interval '28 days')::date, 26, true,  now()-interval '29 days'),

-- Provider 8 (degrading) - Psychiatry
-- Early: 18–25; Late: 40–60; more incomplete late
(1101,8,  now()-interval '59 days' + interval '10:10', (now()-interval '59 days')::date, 20, true,  now()-interval '60 days'),
(1102,8,  now()-interval '57 days' + interval '14:20', (now()-interval '57 days')::date, 22, true,  now()-interval '58 days'),
(1103,8,  now()-interval '55 days' + interval '09:30', (now()-interval '55 days')::date, NULL, true, now()-interval '56 days'),
(1104,8,  now()-interval '52 days' + interval '15:10', (now()-interval '52 days')::date, 25, true,  now()-interval '53 days'),
(1105,8,  now()-interval '48 days' + interval '11:40', (now()-interval '48 days')::date, 28, true,  now()-interval '49 days'),
(1106,8,  now()-interval '45 days' + interval '16:00', (now()-interval '45 days')::date, 34, true,  now()-interval '46 days'),
(1107,8,  now()-interval '42 days' + interval '09:20', (now()-interval '42 days')::date, 39, true,  now()-interval '43 days'),
(1108,8,  now()-interval '39 days' + interval '13:50', (now()-interval '39 days')::date, NULL, true, now()-interval '40 days'),
(1109,8,  now()-interval '35 days' + interval '10:30', (now()-interval '35 days')::date, 44, false, now()-interval '36 days'),
(1110,8,  now()-interval '32 days' + interval '15:20', (now()-interval '32 days')::date, 48, true,  now()-interval '33 days'),
(1111,8,  now()-interval '29 days' + interval '09:50', (now()-interval '29 days')::date, 52, false, now()-interval '30 days'),
(1112,8,  now()-interval '26 days' + interval '14:10', (now()-interval '26 days')::date, NULL, false, now()-interval '27 days'),
(1113,8,  now()-interval '23 days' + interval '11:10', (now()-interval '23 days')::date, 57, true,  now()-interval '24 days'),
(1114,8,  now()-interval '20 days' + interval '16:20', (now()-interval '20 days')::date, 60, false, now()-interval '21 days'),

-- Provider 9 (strong) - Primary Care
(1115,9,  now()-interval '58 days' + interval '09:30', (now()-interval '58 days')::date,  6, true,  now()-interval '59 days'),
(1116,9,  now()-interval '56 days' + interval '13:40', (now()-interval '56 days')::date,  9, true,  now()-interval '57 days'),
(1117,9,  now()-interval '54 days' + interval '10:20', (now()-interval '54 days')::date, NULL, true, now()-interval '55 days'),
(1118,9,  now()-interval '51 days' + interval '15:10', (now()-interval '51 days')::date,  8, true,  now()-interval '52 days'),
(1119,9,  now()-interval '48 days' + interval '11:30', (now()-interval '48 days')::date, 12, true,  now()-interval '49 days'),
(1120,9,  now()-interval '45 days' + interval '16:10', (now()-interval '45 days')::date,  7, true,  now()-interval '46 days'),
(1121,9,  now()-interval '42 days' + interval '09:10', (now()-interval '42 days')::date, 10, true,  now()-interval '43 days'),
(1122,9,  now()-interval '39 days' + interval '13:20', (now()-interval '39 days')::date,  9, true,  now()-interval '40 days'),
(1123,9,  now()-interval '36 days' + interval '10:50', (now()-interval '36 days')::date, NULL, true, now()-interval '37 days'),
(1124,9,  now()-interval '33 days' + interval '15:40', (now()-interval '33 days')::date, 11, true,  now()-interval '34 days'),
(1125,9,  now()-interval '30 days' + interval '09:40', (now()-interval '30 days')::date,  8, true,  now()-interval '31 days'),
(1126,9,  now()-interval '27 days' + interval '14:30', (now()-interval '27 days')::date,  6, true,  now()-interval '28 days'),

-- Provider 10 (average) - Endocrinology
(1127,10, now()-interval '59 days' + interval '11:00', (now()-interval '59 days')::date, 17, true,  now()-interval '60 days'),
(1128,10, now()-interval '57 days' + interval '16:10', (now()-interval '57 days')::date, 21, true,  now()-interval '58 days'),
(1129,10, now()-interval '55 days' + interval '09:30', (now()-interval '55 days')::date, NULL, true, now()-interval '56 days'),
(1130,10, now()-interval '52 days' + interval '14:40', (now()-interval '52 days')::date, 22, true,  now()-interval '53 days'),
(1131,10, now()-interval '49 days' + interval '10:20', (now()-interval '49 days')::date, 19, true,  now()-interval '50 days'),
(1132,10, now()-interval '46 days' + interval '15:30', (now()-interval '46 days')::date, 24, true,  now()-interval '47 days'),
(1133,10, now()-interval '43 days' + interval '11:10', (now()-interval '43 days')::date, 20, true,  now()-interval '44 days'),
(1134,10, now()-interval '40 days' + interval '16:00', (now()-interval '40 days')::date, 26, false, now()-interval '41 days'),
(1135,10, now()-interval '37 days' + interval '09:50', (now()-interval '37 days')::date, 18, true,  now()-interval '38 days'),
(1136,10, now()-interval '34 days' + interval '14:10', (now()-interval '34 days')::date, NULL, true, now()-interval '35 days'),

-- A second wave of appointments (more density in later half to mimic growth/seasonality)
(1137,1,  now()-interval '12 days' + interval '10:10', (now()-interval '12 days')::date,  8, true,  now()-interval '13 days'),
(1138,1,  now()-interval '9 days'  + interval '15:10', (now()-interval '9 days')::date,  9, true,  now()-interval '10 days'),
(1139,2,  now()-interval '12 days' + interval '11:20', (now()-interval '12 days')::date, 12, true,  now()-interval '13 days'),
(1140,2,  now()-interval '8 days'  + interval '16:20', (now()-interval '8 days')::date, 10, true,  now()-interval '9 days'),
(1141,3,  now()-interval '12 days' + interval '09:40', (now()-interval '12 days')::date, 21, true,  now()-interval '13 days'),
(1142,3,  now()-interval '7 days'  + interval '14:40', (now()-interval '7 days')::date, 24, true,  now()-interval '8 days'),
(1143,4,  now()-interval '11 days' + interval '10:30', (now()-interval '11 days')::date, 23, true,  now()-interval '12 days'),
(1144,4,  now()-interval '6 days'  + interval '15:30', (now()-interval '6 days')::date, 26, true,  now()-interval '7 days'),
(1145,5,  now()-interval '11 days' + interval '09:10', (now()-interval '11 days')::date, 50, false, now()-interval '12 days'),
(1146,5,  now()-interval '6 days'  + interval '13:40', (now()-interval '6 days')::date, NULL, false, now()-interval '7 days'),
(1147,6,  now()-interval '11 days' + interval '11:40', (now()-interval '11 days')::date,  8, true,  now()-interval '12 days'),
(1148,6,  now()-interval '6 days'  + interval '16:10', (now()-interval '6 days')::date,  9, true,  now()-interval '7 days'),
(1149,7,  now()-interval '10 days' + interval '10:50', (now()-interval '10 days')::date, 22, true,  now()-interval '11 days'),
(1150,7,  now()-interval '5 days'  + interval '15:10', (now()-interval '5 days')::date, 25, true,  now()-interval '6 days'),
(1151,8,  now()-interval '10 days' + interval '09:30', (now()-interval '10 days')::date, 58, false, now()-interval '11 days'),
(1152,8,  now()-interval '5 days'  + interval '14:10', (now()-interval '5 days')::date, 61, false, now()-interval '6 days'),
(1153,9,  now()-interval '10 days' + interval '11:10', (now()-interval '10 days')::date,  7, true,  now()-interval '11 days'),
(1154,9,  now()-interval '4 days'  + interval '16:20', (now()-interval '4 days')::date,  9, true,  now()-interval '5 days'),
(1155,10, now()-interval '9 days'  + interval '10:20', (now()-interval '9 days')::date, 20, true,  now()-interval '10 days'),
(1156,10, now()-interval '4 days'  + interval '15:40', (now()-interval '4 days')::date, 26, false, now()-interval '5 days');

-- Seed patient feedback
INSERT INTO patient_feedback
(feedback_id, provider_id, appointment_id, rating, submitted_at, comment)
VALUES
-- Provider 1 (strong)
(2001,1,1001,5, now()-interval '58 days' + interval '18:00', 'Very responsive and efficient.'),
(2002,1,1003,4, now()-interval '56 days' + interval '19:10', 'Good visit, quick follow-up.'),
(2003,1,1005,5, now()-interval '52 days' + interval '17:20', 'Great experience overall.'),
(2004,1,1007,4, now()-interval '46 days' + interval '18:40', 'Professional and on time.'),
(2005,1,1012,5, now()-interval '31 days' + interval '18:05', 'Fast response and clear plan.'),
(2006,1,1016,3, now()-interval '19 days' + interval '20:15', 'Good care, but felt a bit rushed.'), -- noise

-- Provider 2 (strong)
(2007,2,1019,5, now()-interval '58 days' + interval '18:30', 'Excellent communication.'),
(2008,2,1021,4, now()-interval '53 days' + interval '19:05', 'Smooth process.'),
(2009,2,1024,5, now()-interval '45 days' + interval '18:10', 'Very timely response.'),
(2010,2,1028,4, now()-interval '33 days' + interval '19:20', 'Overall positive.'),
(2011,2,1033,2, now()-interval '18 days' + interval '21:00', 'Waited longer than expected.'), -- noise

-- Provider 3 (average)
(2012,3,1035,4, now()-interval '57 days' + interval '19:00', 'Helpful, slight delay.'),
(2013,3,1038,3, now()-interval '50 days' + interval '20:10', 'Okay experience.'),
(2014,3,1041,4, now()-interval '41 days' + interval '18:50', 'Good visit.'),
(2015,3,1046,2, now()-interval '26 days' + interval '21:10', 'Appointment did not complete as expected.'),
(2016,3,1141,3, now()-interval '11 days' + interval '20:30', 'Average wait time.'),

-- Provider 4 (average Endo)
(2017,4,1049,4, now()-interval '58 days' + interval '19:15', 'Good guidance.'),
(2018,4,1052,3, now()-interval '51 days' + interval '20:05', 'Wait was a bit long.'),
(2019,4,1056,4, now()-interval '39 days' + interval '18:45', 'Solid experience.'),
(2020,4,1058,2, now()-interval '33 days' + interval '21:30', 'Visit wasn’t completed.'),
(2021,4,1144,4, now()-interval '5 days'  + interval '19:40', 'Good follow-up.'),

-- Provider 5 (DEGRADING)
(2022,5,1061,4, now()-interval '58 days' + interval '19:10', 'Good early experience.'),
(2023,5,1064,4, now()-interval '51 days' + interval '19:40', 'Helpful and responsive.'),
(2024,5,1067,3, now()-interval '41 days' + interval '20:15', 'Slightly delayed response.'),
(2025,5,1069,3, now()-interval '34 days' + interval '20:50', 'Wait time increased lately.'),
(2026,5,1072,2, now()-interval '25 days' + interval '21:10', 'Appointment didn’t complete.'),
(2027,5,1075,1, now()-interval '16 days' + interval '21:40', 'Very slow response and not completed.'),
(2028,5,1145,2, now()-interval '10 days' + interval '21:20', 'Long delays recently.'),

-- Provider 6 (strong Endo)
(2029,6,1077,5, now()-interval '57 days' + interval '18:25', 'Quick and clear.'),
(2030,6,1080,4, now()-interval '50 days' + interval '19:10', 'Good visit.'),
(2031,6,1084,5, now()-interval '38 days' + interval '18:55', 'Very responsive.'),
(2032,6,1088,4, now()-interval '26 days' + interval '19:30', 'Positive experience.'),
(2033,6,1147,5, now()-interval '10 days' + interval '18:40', 'Fast turnaround.'),

-- Provider 7 (average Psych)
(2034,7,1089,4, now()-interval '58 days' + interval '20:00', 'Good experience overall.'),
(2035,7,1092,3, now()-interval '51 days' + interval '20:40', 'Waited a bit.'),
(2036,7,1096,2, now()-interval '39 days' + interval '21:25', 'Appointment did not complete.'),
(2037,7,1099,4, now()-interval '30 days' + interval '19:50', 'Helpful session.'),
(2038,7,1149,3, now()-interval '9 days'  + interval '20:20', 'Okay.'),

-- Provider 8 (DEGRADING Psych)
(2039,8,1101,4, now()-interval '58 days' + interval '19:05', 'Good at first.'),
(2040,8,1104,3, now()-interval '51 days' + interval '20:10', 'Response was a bit slow.'),
(2041,8,1107,3, now()-interval '41 days' + interval '20:45', 'Delays noticeable.'),
(2042,8,1109,2, now()-interval '34 days' + interval '21:10', 'Appointment didn’t complete.'),
(2043,8,1111,2, now()-interval '28 days' + interval '21:30', 'Long wait time.'),
(2044,8,1114,1, now()-interval '19 days' + interval '21:55', 'Very poor experience recently.'),
(2045,8,1152,1, now()-interval '4 days'  + interval '22:10', 'Repeated delays and no completion.'),

-- Provider 9 (strong)
(2046,9,1115,5, now()-interval '57 days' + interval '18:10', 'Excellent.'),
(2047,9,1118,4, now()-interval '50 days' + interval '19:00', 'Very good.'),
(2048,9,1122,5, now()-interval '38 days' + interval '18:35', 'Super responsive.'),
(2049,9,1124,3, now()-interval '32 days' + interval '20:05', 'Good, but a little rushed.'), -- noise
(2050,9,1154,5, now()-interval '3 days'  + interval '18:50', 'Great experience.'),

-- Provider 10 (average Endo)
(2051,10,1127,4, now()-interval '58 days' + interval '19:25', 'Good, slight delay.'),
(2052,10,1130,3, now()-interval '51 days' + interval '20:20', 'Waited longer than expected.'),
(2053,10,1134,2, now()-interval '39 days' + interval '21:15', 'Appointment not completed.'),
(2054,10,1136,4, now()-interval '33 days' + interval '19:40', 'Good overall.'),
(2055,10,1156,2, now()-interval '3 days'  + interval '21:05', 'Delay and incomplete.');
