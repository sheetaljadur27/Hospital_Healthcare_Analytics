USE hospital_analytics;
INSERT INTO departments (department_id, department_name)
VALUES
(1, 'Cardiology'),
(2, 'Orthopedics'),
(3, 'General Medicine'),
(4, 'Neurology'),
(5, 'Pediatrics'),
(6, 'Oncology'),
(7, 'Gastroenterology'),
(8, 'Dermatology');
INSERT INTO doctors
(doctor_id, doctor_name, specialization, department_id)
VALUES
(101, 'Dr. Arjun Rao', 'Cardiology', 1),
(102, 'Dr. Meera Nair', 'Cardiology', 1),
(103, 'Dr. Rahul Sharma', 'Orthopedics', 2),
(104, 'Dr. Priya Menon', 'Orthopedics', 2),
(105, 'Dr. Kiran Reddy', 'General Medicine', 3),
(106, 'Dr. Ananya Das', 'General Medicine', 3),
(107, 'Dr. Vikram Singh', 'Neurology', 4),
(108, 'Dr. Neha Kapoor', 'Neurology', 4),
(109, 'Dr. Sneha Iyer', 'Pediatrics', 5),
(110, 'Dr. Amit Verma', 'Pediatrics', 5),
(111, 'Dr. Rohan Gupta', 'Oncology', 6),
(112, 'Dr. Kavya Shah', 'Oncology', 6),
(113, 'Dr. Suresh Kumar', 'Gastroenterology', 7),
(114, 'Dr. Divya Rao', 'Gastroenterology', 7),
(115, 'Dr. Pooja Joshi', 'Dermatology', 8),
(116, 'Dr. Nikhil Jain', 'Dermatology', 8),
(117, 'Dr. Sanjay Patel', 'General Medicine', 3),
(118, 'Dr. Aisha Khan', 'Cardiology', 1),
(119, 'Dr. Manoj Kumar', 'Orthopedics', 2),
(120, 'Dr. Ritu Agarwal', 'Pediatrics', 5);
INSERT INTO patients
(patient_id, patient_name, gender, date_of_birth, city, registration_date)
VALUES
(1001, 'Aarav Sharma', 'Male', '1985-04-12', 'Bangalore', '2026-01-05'),
(1002, 'Ananya Reddy', 'Female', '1992-08-21', 'Hyderabad', '2026-01-08'),
(1003, 'Rohan Kumar', 'Male', '1978-11-03', 'Bangalore', '2026-01-10'),
(1004, 'Priya Singh', 'Female', '1995-02-17', 'Chennai', '2026-01-12'),
(1005, 'Vikram Patel', 'Male', '1969-07-25', 'Bangalore', '2026-01-15'),
(1006, 'Sneha Rao', 'Female', '1988-09-14', 'Mysore', '2026-01-18'),
(1007, 'Rahul Mehta', 'Male', '1990-01-30', 'Bangalore', '2026-01-20'),
(1008, 'Kavya Nair', 'Female', '1982-05-19', 'Kochi', '2026-01-22'),
(1009, 'Arjun Das', 'Male', '1975-12-11', 'Bangalore', '2026-01-25'),
(1010, 'Neha Kapoor', 'Female', '1998-03-08', 'Hyderabad', '2026-01-27'),
(1011, 'Suresh Iyer', 'Male', '1965-06-16', 'Bangalore', '2026-02-01'),
(1012, 'Divya Menon', 'Female', '1987-10-27', 'Chennai', '2026-02-03'),
(1013, 'Amit Verma', 'Male', '1993-04-05', 'Bangalore', '2026-02-05'),
(1014, 'Pooja Shah', 'Female', '1979-08-13', 'Pune', '2026-02-07'),
(1015, 'Nikhil Jain', 'Male', '1984-02-28', 'Bangalore', '2026-02-10'),
(1016, 'Ritu Agarwal', 'Female', '1991-11-18', 'Delhi', '2026-02-12'),
(1017, 'Manoj Kumar', 'Male', '1972-01-22', 'Bangalore', '2026-02-15'),
(1018, 'Aisha Khan', 'Female', '1989-06-09', 'Hyderabad', '2026-02-18'),
(1019, 'Sanjay Patel', 'Male', '1968-09-29', 'Bangalore', '2026-02-20'),
(1020, 'Meera Joshi', 'Female', '1996-12-04', 'Mysore', '2026-02-22'),
(1021, 'Karan Malhotra', 'Male', '1981-03-15', 'Bangalore', '2026-02-25'),
(1022, 'Shreya Gupta', 'Female', '1994-07-07', 'Chennai', '2026-02-27'),
(1023, 'Aditya Rao', 'Male', '1986-10-12', 'Bangalore', '2026-03-01'),
(1024, 'Lakshmi Devi', 'Female', '1976-05-24', 'Hyderabad', '2026-03-03'),
(1025, 'Varun Shetty', 'Male', '1990-09-10', 'Bangalore', '2026-03-05'),
(1026, 'Ishita Roy', 'Female', '1997-01-19', 'Kolkata', '2026-03-08'),
(1027, 'Rakesh Babu', 'Male', '1970-11-26', 'Bangalore', '2026-03-10'),
(1028, 'Nandini Rao', 'Female', '1985-04-30', 'Mysore', '2026-03-12'),
(1029, 'Harish Kumar', 'Male', '1962-08-05', 'Bangalore', '2026-03-15'),
(1030, 'Swati Sharma', 'Female', '1993-12-20', 'Hyderabad', '2026-03-18');
SELECT COUNT(*) AS total_patients
FROM patients;
INSERT INTO visits
(visit_id, patient_id, doctor_id, visit_type, visit_date, admission_date, discharge_date, diagnosis)
VALUES
(2001, 1001, 101, 'OPD', '2026-01-06', NULL, NULL, 'Hypertension'),
(2002, 1002, 105, 'OPD', '2026-01-09', NULL, NULL, 'Fever'),
(2003, 1003, 103, 'IPD', '2026-01-11', '2026-01-11', '2026-01-15', 'Fracture'),
(2004, 1004, 109, 'OPD', '2026-01-13', NULL, NULL, 'Viral Infection'),
(2005, 1005, 101, 'IPD', '2026-01-16', '2026-01-16', '2026-01-21', 'Heart Disease'),
(2006, 1006, 106, 'OPD', '2026-01-19', NULL, NULL, 'Diabetes'),
(2007, 1007, 107, 'OPD', '2026-01-21', NULL, NULL, 'Migraine'),
(2008, 1008, 113, 'IPD', '2026-01-23', '2026-01-23', '2026-01-27', 'Gastritis'),
(2009, 1009, 111, 'IPD', '2026-01-26', '2026-01-26', '2026-02-02', 'Cancer'),
(2010, 1010, 110, 'OPD', '2026-01-28', NULL, NULL, 'Fever'),
(2011, 1011, 118, 'OPD', '2026-02-02', NULL, NULL, 'Chest Pain'),
(2012, 1012, 114, 'OPD', '2026-02-04', NULL, NULL, 'Acidity'),
(2013, 1013, 105, 'IPD', '2026-02-06', '2026-02-06', '2026-02-09', 'Diabetes'),
(2014, 1014, 115, 'OPD', '2026-02-08', NULL, NULL, 'Skin Allergy'),
(2015, 1015, 119, 'IPD', '2026-02-11', '2026-02-11', '2026-02-14', 'Knee Injury'),
(2016, 1016, 108, 'OPD', '2026-02-13', NULL, NULL, 'Migraine'),
(2017, 1017, 112, 'IPD', '2026-02-16', '2026-02-16', '2026-02-23', 'Cancer'),
(2018, 1018, 102, 'OPD', '2026-02-19', NULL, NULL, 'Hypertension'),
(2019, 1019, 101, 'IPD', '2026-02-21', '2026-02-21', '2026-02-26', 'Heart Disease'),
(2020, 1020, 120, 'OPD', '2026-02-23', NULL, NULL, 'Fever'),
(2021, 1021, 103, 'OPD', '2026-02-26', NULL, NULL, 'Back Pain'),
(2022, 1022, 106, 'OPD', '2026-02-28', NULL, NULL, 'Diabetes'),
(2023, 1023, 107, 'IPD', '2026-03-02', '2026-03-02', '2026-03-06', 'Stroke'),
(2024, 1024, 112, 'IPD', '2026-03-04', '2026-03-04', '2026-03-12', 'Cancer'),
(2025, 1025, 104, 'OPD', '2026-03-06', NULL, NULL, 'Joint Pain'),
(2026, 1026, 109, 'OPD', '2026-03-09', NULL, NULL, 'Fever'),
(2027, 1027, 111, 'IPD', '2026-03-11', '2026-03-11', '2026-03-18', 'Cancer'),
(2028, 1028, 102, 'OPD', '2026-03-13', NULL, NULL, 'Hypertension'),
(2029, 1029, 101, 'IPD', '2026-03-16', '2026-03-16', '2026-03-20', 'Heart Disease'),
(2030, 1030, 110, 'OPD', '2026-03-19', NULL, NULL, 'Viral Infection'),
(2031, 1001, 118, 'OPD', '2026-02-10', NULL, NULL, 'Hypertension'),
(2032, 1002, 105, 'OPD', '2026-02-15', NULL, NULL, 'Fever'),
(2033, 1003, 103, 'OPD', '2026-02-20', NULL, NULL, 'Joint Pain'),
(2034, 1005, 101, 'OPD', '2026-03-01', NULL, NULL, 'Chest Pain'),
(2035, 1007, 107, 'OPD', '2026-03-05', NULL, NULL, 'Migraine'),
(2036, 1009, 111, 'OPD', '2026-03-10', NULL, NULL, 'Cancer Follow-up'),
(2037, 1011, 118, 'IPD', '2026-03-12', '2026-03-12', '2026-03-17', 'Heart Disease'),
(2038, 1013, 105, 'OPD', '2026-03-14', NULL, NULL, 'Diabetes'),
(2039, 1015, 119, 'OPD', '2026-03-16', NULL, NULL, 'Knee Pain'),
(2040, 1017, 112, 'OPD', '2026-03-20', NULL, NULL, 'Cancer Follow-up'),
(2041, 1019, 101, 'OPD', '2026-03-22', NULL, NULL, 'Heart Disease'),
(2042, 1021, 103, 'IPD', '2026-03-24', '2026-03-24', '2026-03-28', 'Fracture'),
(2043, 1023, 107, 'OPD', '2026-03-25', NULL, NULL, 'Stroke Follow-up'),
(2044, 1024, 112, 'OPD', '2026-03-27', NULL, NULL, 'Cancer Follow-up'),
(2045, 1025, 104, 'OPD', '2026-03-28', NULL, NULL, 'Joint Pain'),
(2046, 1027, 111, 'OPD', '2026-03-29', NULL, NULL, 'Cancer Follow-up'),
(2047, 1029, 101, 'OPD', '2026-03-30', NULL, NULL, 'Heart Disease'),
(2048, 1004, 109, 'OPD', '2026-03-31', NULL, NULL, 'Viral Infection'),
(2049, 1006, 106, 'OPD', '2026-03-31', NULL, NULL, 'Diabetes'),
(2050, 1008, 113, 'OPD', '2026-03-31', NULL, NULL, 'Gastritis');
SELECT COUNT(*) AS total_visits
FROM visits;
select* from patients;
select * from doctors;
select *from visits;
SELECT COUNT(*) FROM patients;
SELECT COUNT(*) FROM visits;
INSERT INTO billing
(bill_id, visit_id, patient_id, bill_date, total_amount, insurance_amount, patient_amount, payment_status)
VALUES
(3001, 2001, 1001, '2026-01-06', 4500.00, 3000.00, 1500.00, 'Paid'),
(3002, 2002, 1002, '2026-01-09', 2500.00, 1500.00, 1000.00, 'Paid'),
(3003, 2003, 1003, '2026-01-15', 28000.00, 20000.00, 8000.00, 'Paid'),
(3004, 2004, 1004, '2026-01-13', 3200.00, 2000.00, 1200.00, 'Paid'),
(3005, 2005, 1005, '2026-01-21', 65000.00, 50000.00, 15000.00, 'Paid'),
(3006, 2006, 1006, '2026-01-19', 5500.00, 3500.00, 2000.00, 'Paid'),
(3007, 2007, 1007, '2026-01-21', 4000.00, 2500.00, 1500.00, 'Paid'),
(3008, 2008, 1008, '2026-01-27', 22000.00, 15000.00, 7000.00, 'Paid'),
(3009, 2009, 1009, '2026-02-02', 95000.00, 75000.00, 20000.00, 'Paid'),
(3010, 2010, 1010, '2026-01-28', 2800.00, 1500.00, 1300.00, 'Paid'),
(3011, 2011, 1011, '2026-02-02', 6000.00, 4000.00, 2000.00, 'Paid'),
(3012, 2012, 1012, '2026-02-04', 3500.00, 2000.00, 1500.00, 'Paid'),
(3013, 2013, 1013, '2026-02-09', 18000.00, 12000.00, 6000.00, 'Paid'),
(3014, 2014, 1014, '2026-02-08', 3000.00, 1500.00, 1500.00, 'Paid'),
(3015, 2015, 1015, '2026-02-14', 24000.00, 16000.00, 8000.00, 'Paid'),
(3016, 2016, 1016, '2026-02-13', 4500.00, 2500.00, 2000.00, 'Paid'),
(3017, 2017, 1017, '2026-02-23', 85000.00, 65000.00, 20000.00, 'Paid'),
(3018, 2018, 1018, '2026-02-19', 4800.00, 3000.00, 1800.00, 'Paid'),
(3019, 2019, 1019, '2026-02-26', 72000.00, 55000.00, 17000.00, 'Paid'),
(3020, 2020, 1020, '2026-02-23', 2600.00, 1500.00, 1100.00, 'Paid'),
(3021, 2021, 1021, '2026-02-26', 5000.00, 3000.00, 2000.00, 'Paid'),
(3022, 2022, 1022, '2026-02-28', 5200.00, 3200.00, 2000.00, 'Paid'),
(3023, 2023, 1023, '2026-03-06', 45000.00, 35000.00, 10000.00, 'Paid'),
(3024, 2024, 1024, '2026-03-12', 105000.00, 80000.00, 25000.00, 'Paid'),
(3025, 2025, 1025, '2026-03-06', 4200.00, 2500.00, 1700.00, 'Paid'),
(3026, 2026, 1026, '2026-03-09', 2700.00, 1500.00, 1200.00, 'Paid'),
(3027, 2027, 1027, '2026-03-18', 88000.00, 70000.00, 18000.00, 'Paid'),
(3028, 2028, 1028, '2026-03-13', 4600.00, 3000.00, 1600.00, 'Paid'),
(3029, 2029, 1029, '2026-03-20', 68000.00, 52000.00, 16000.00, 'Paid'),
(3030, 2030, 1030, '2026-03-19', 3100.00, 1800.00, 1300.00, 'Paid'),
(3031, 2031, 1001, '2026-02-10', 4200.00, 2800.00, 1400.00, 'Paid'),
(3032, 2032, 1002, '2026-02-15', 2300.00, 1300.00, 1000.00, 'Paid'),
(3033, 2033, 1003, '2026-02-20', 3900.00, 2200.00, 1700.00, 'Paid'),
(3034, 2034, 1005, '2026-03-01', 5500.00, 3500.00, 2000.00, 'Paid'),
(3035, 2035, 1007, '2026-03-05', 4100.00, 2500.00, 1600.00, 'Paid'),
(3036, 2036, 1009, '2026-03-10', 6000.00, 4000.00, 2000.00, 'Paid'),
(3037, 2037, 1011, '2026-03-17', 70000.00, 54000.00, 16000.00, 'Paid'),
(3038, 2038, 1013, '2026-03-14', 5100.00, 3000.00, 2100.00, 'Paid'),
(3039, 2039, 1015, '2026-03-16', 3500.00, 2000.00, 1500.00, 'Paid'),
(3040, 2040, 1017, '2026-03-20', 5500.00, 3500.00, 2000.00, 'Paid'),
(3041, 2041, 1019, '2026-03-22', 4800.00, 3000.00, 1800.00, 'Paid'),
(3042, 2042, 1021, '2026-03-28', 26000.00, 18000.00, 8000.00, 'Paid'),
(3043, 2043, 1023, '2026-03-25', 5000.00, 3000.00, 2000.00, 'Paid'),
(3044, 2044, 1024, '2026-03-27', 6200.00, 4000.00, 2200.00, 'Paid'),
(3045, 2045, 1025, '2026-03-28', 4300.00, 2500.00, 1800.00, 'Paid'),
(3046, 2046, 1027, '2026-03-29', 5900.00, 3800.00, 2100.00, 'Paid'),
(3047, 2047, 1029, '2026-03-30', 5100.00, 3200.00, 1900.00, 'Paid'),
(3048, 2048, 1004, '2026-03-31', 3000.00, 1800.00, 1200.00, 'Paid'),
(3049, 2049, 1006, '2026-03-31', 5300.00, 3200.00, 2100.00, 'Paid'),
(3050, 2050, 1008, '2026-03-31', 4200.00, 2500.00, 1700.00, 'Paid');
SELECT COUNT(*) AS total_bills
FROM billing;
SELECT *
FROM billing
WHERE total_amount <> insurance_amount + patient_amount;
INSERT INTO procedures
(procedure_id, visit_id, procedure_name, procedure_cost)
VALUES
(4001, 2003, 'X-Ray', 2500.00),
(4002, 2005, 'ECG', 1800.00),
(4003, 2005, 'Echocardiogram', 4500.00),
(4004, 2008, 'Endoscopy', 6500.00),
(4005, 2009, 'CT Scan', 8500.00),
(4006, 2011, 'ECG', 1800.00),
(4007, 2013, 'Blood Test', 1200.00),
(4008, 2015, 'MRI', 9000.00),
(4009, 2017, 'CT Scan', 8500.00),
(4010, 2019, 'Echocardiogram', 4500.00),
(4011, 2023, 'MRI', 9000.00),
(4012, 2024, 'CT Scan', 8500.00),
(4013, 2027, 'Biopsy', 12000.00),
(4014, 2029, 'Echocardiogram', 4500.00),
(4015, 2034, 'ECG', 1800.00),
(4016, 2037, 'ECG', 1800.00),
(4017, 2042, 'X-Ray', 2500.00),
(4018, 2043, 'MRI', 9000.00),
(4019, 2044, 'CT Scan', 8500.00),
(4020, 2047, 'Echocardiogram', 4500.00);
SELECT COUNT(*) AS total_procedures
FROM procedures;
INSERT INTO pharmacy_sales
(sale_id, patient_id, visit_id, medicine_name, quantity, unit_price, sale_date)
VALUES
(5001, 1001, 2001, 'Amlodipine 5mg', 30, 8.00, '2026-01-06'),
(5002, 1002, 2002, 'Paracetamol 500mg', 20, 3.00, '2026-01-09'),
(5003, 1003, 2003, 'Calcium Tablets', 30, 6.00, '2026-01-15'),
(5004, 1004, 2004, 'Paracetamol 500mg', 15, 3.00, '2026-01-13'),
(5005, 1005, 2005, 'Atorvastatin 20mg', 30, 12.00, '2026-01-21'),
(5006, 1006, 2006, 'Metformin 500mg', 60, 5.00, '2026-01-19'),
(5007, 1007, 2007, 'Sumatriptan 50mg', 10, 25.00, '2026-01-21'),
(5008, 1008, 2008, 'Pantoprazole 40mg', 30, 6.00, '2026-01-27'),
(5009, 1009, 2009, 'Ondansetron 4mg', 20, 10.00, '2026-02-02'),
(5010, 1010, 2010, 'Paracetamol 500mg', 20, 3.00, '2026-01-28'),
(5011, 1011, 2011, 'Aspirin 75mg', 30, 4.00, '2026-02-02'),
(5012, 1012, 2012, 'Pantoprazole 40mg', 30, 6.00, '2026-02-04'),
(5013, 1013, 2013, 'Metformin 500mg', 60, 5.00, '2026-02-09'),
(5014, 1014, 2014, 'Cetirizine 10mg', 20, 4.00, '2026-02-08'),
(5015, 1015, 2015, 'Diclofenac 50mg', 20, 7.00, '2026-02-14'),
(5016, 1016, 2016, 'Sumatriptan 50mg', 10, 25.00, '2026-02-13'),
(5017, 1017, 2017, 'Ondansetron 4mg', 30, 10.00, '2026-02-23'),
(5018, 1018, 2018, 'Amlodipine 5mg', 30, 8.00, '2026-02-19'),
(5019, 1019, 2019, 'Atorvastatin 20mg', 30, 12.00, '2026-02-26'),
(5020, 1020, 2020, 'Paracetamol 500mg', 20, 3.00, '2026-02-23'),
(5021, 1021, 2021, 'Diclofenac 50mg', 20, 7.00, '2026-02-26'),
(5022, 1022, 2022, 'Metformin 500mg', 60, 5.00, '2026-02-28'),
(5023, 1023, 2023, 'Aspirin 75mg', 30, 4.00, '2026-03-06'),
(5024, 1024, 2024, 'Ondansetron 4mg', 30, 10.00, '2026-03-12'),
(5025, 1025, 2025, 'Diclofenac 50mg', 20, 7.00, '2026-03-06'),
(5026, 1026, 2026, 'Paracetamol 500mg', 20, 3.00, '2026-03-09'),
(5027, 1027, 2027, 'Ondansetron 4mg', 30, 10.00, '2026-03-18'),
(5028, 1028, 2028, 'Amlodipine 5mg', 30, 8.00, '2026-03-13'),
(5029, 1029, 2029, 'Atorvastatin 20mg', 30, 12.00, '2026-03-20'),
(5030, 1030, 2030, 'Paracetamol 500mg', 20, 3.00, '2026-03-19'),
(5031, 1001, 2031, 'Amlodipine 5mg', 30, 8.00, '2026-02-10'),
(5032, 1002, 2032, 'Paracetamol 500mg', 20, 3.00, '2026-02-15'),
(5033, 1003, 2033, 'Diclofenac 50mg', 20, 7.00, '2026-02-20'),
(5034, 1005, 2034, 'Aspirin 75mg', 30, 4.00, '2026-03-01'),
(5035, 1007, 2035, 'Sumatriptan 50mg', 10, 25.00, '2026-03-05'),
(5036, 1009, 2036, 'Ondansetron 4mg', 30, 10.00, '2026-03-10'),
(5037, 1011, 2037, 'Atorvastatin 20mg', 30, 12.00, '2026-03-17'),
(5038, 1013, 2038, 'Metformin 500mg', 60, 5.00, '2026-03-14'),
(5039, 1015, 2039, 'Diclofenac 50mg', 20, 7.00, '2026-03-16'),
(5040, 1017, 2040, 'Ondansetron 4mg', 30, 10.00, '2026-03-20'),
(5041, 1019, 2041, 'Aspirin 75mg', 30, 4.00, '2026-03-22'),
(5042, 1021, 2042, 'Calcium Tablets', 30, 6.00, '2026-03-28'),
(5043, 1023, 2043, 'Aspirin 75mg', 30, 4.00, '2026-03-25'),
(5044, 1024, 2044, 'Ondansetron 4mg', 30, 10.00, '2026-03-27'),
(5045, 1025, 2045, 'Diclofenac 50mg', 20, 7.00, '2026-03-28'),
(5046, 1027, 2046, 'Ondansetron 4mg', 30, 10.00, '2026-03-29'),
(5047, 1029, 2047, 'Atorvastatin 20mg', 30, 12.00, '2026-03-30'),
(5048, 1004, 2048, 'Paracetamol 500mg', 20, 3.00, '2026-03-31'),
(5049, 1006, 2049, 'Metformin 500mg', 60, 5.00, '2026-03-31'),
(5050, 1008, 2050, 'Pantoprazole 40mg', 30, 6.00, '2026-03-31');
SELECT COUNT(*) AS total_departments
FROM departments;
SELECT COUNT(*) AS total_doctors
FROM doctors;
SELECT COUNT(*) AS total_patients
FROM patients;
SELECT COUNT(*) AS total_visits
FROM visits;
SELECT COUNT(*) AS total_bills
FROM billing;
SELECT COUNT(*) AS total_procedures
FROM procedures;
SELECT COUNT(*) AS total_pharmacy_sales
FROM pharmacy_sales;
USE hospital_analytics;
