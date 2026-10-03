USE hospital_analytics;

SELECT COUNT(*) AS total_patients
FROM patients;
SELECT COUNT(*) AS total_visits
FROM visits;
SELECT visit_type, COUNT(*) AS total_visits
FROM visits
GROUP BY visit_type;
SELECT gender, COUNT(*) AS total_patients
FROM patients
GROUP BY gender;
SELECT city, COUNT(*) AS total_patients
FROM patients
GROUP BY city
ORDER BY total_patients DESC;
SELECT *
FROM visits
WHERE visit_type = 'OPD';
SELECT visit_id, patient_id, visit_type, diagnosis
FROM visits
WHERE visit_type = 'IPD'
  AND diagnosis = 'Cardiac Checkup';
  Average bill amount
SELECT AVG(total_amount) AS average_bill
FROM billing;
-- 9. Total hospital revenue
SELECT SUM(total_amount) AS total_revenue
FROM billing;
-- 10. Highest and lowest bill
SELECT
    MAX(total_amount) AS highest_bill,
    MIN(total_amount) AS lowest_bill
FROM billing;
SELECT
    p.patient_id,
    p.patient_name,
    p.gender,
    v.visit_id,
    v.visit_type,
    v.visit_date,
    v.diagnosis
FROM patients p
INNER JOIN visits v
    ON p.patient_id = v.patient_id;
SELECT
    v.visit_id,
    v.patient_id,
    d.doctor_id,
    d.doctor_name,
    d.specialization,
    v.visit_type,
    v.visit_date,
    v.diagnosis
FROM visits v
INNER JOIN doctors d
    ON v.doctor_id = d.doctor_id;
    SELECT
    dep.department_name,
    COUNT(*) AS total_visits
FROM visits v
INNER JOIN doctors d
    ON v.doctor_id = d.doctor_id
INNER JOIN departments dep
    ON d.department_id = dep.department_id
GROUP BY dep.department_name
ORDER BY total_visits DESC;
SELECT
    dep.department_name,
    COUNT(b.bill_id) AS total_bills,
    SUM(b.total_amount) AS total_revenue,
    AVG(b.total_amount) AS average_bill
FROM departments dep
INNER JOIN doctors d
    ON dep.department_id = d.department_id
INNER JOIN visits v
    ON d.doctor_id = v.doctor_id
INNER JOIN billing b
    ON v.visit_id = b.visit_id
GROUP BY dep.department_name
ORDER BY total_revenue DESC;
SELECT
    p.patient_id,
    p.patient_name,
    COUNT(b.bill_id) AS total_bills,
    SUM(b.total_amount) AS total_bill_amount,
    SUM(b.insurance_amount) AS insurance_paid,
    SUM(b.patient_amount) AS patient_paid
FROM patients p
INNER JOIN visits v
    ON p.patient_id = v.patient_id
INNER JOIN billing b
    ON v.visit_id = b.visit_id
GROUP BY
    p.patient_id,
    p.patient_name
ORDER BY total_bill_amount DESC;
SELECT
    d.doctor_id,
    d.doctor_name,
    d.specialization,
    COUNT(v.visit_id) AS total_visits
FROM doctors d
INNER JOIN visits v
    ON d.doctor_id = v.doctor_id
GROUP BY
    d.doctor_id,
    d.doctor_name,
    d.specialization
ORDER BY total_visits DESC;
SELECT
    dep.department_name,
    SUM(CASE WHEN v.visit_type = 'OPD' THEN 1 ELSE 0 END) AS opd_visits,
    SUM(CASE WHEN v.visit_type = 'IPD' THEN 1 ELSE 0 END) AS ipd_visits,
    COUNT(*) AS total_visits
FROM departments dep
INNER JOIN doctors d
    ON dep.department_id = d.department_id
INNER JOIN visits v
    ON d.doctor_id = v.doctor_id
GROUP BY dep.department_name
ORDER BY total_visits DESC;
SELECT
    dep.department_name,
    SUM(b.insurance_amount) AS insurance_amount,
    SUM(b.patient_amount) AS patient_amount,
    SUM(b.total_amount) AS total_revenue
FROM departments dep
INNER JOIN doctors d
    ON dep.department_id = d.department_id
INNER JOIN visits v
    ON d.doctor_id = v.doctor_id
INNER JOIN billing b
    ON v.visit_id = b.visit_id
GROUP BY dep.department_name
ORDER BY total_revenue DESC;


-- 19. Procedure utilization
SELECT
    procedure_name,
    COUNT(*) AS procedure_count,
    SUM(procedure_cost) AS total_procedure_revenue,
    AVG(procedure_cost) AS average_procedure_cost
FROM procedures
GROUP BY procedure_name
ORDER BY procedure_count DESC;


-- 20. Pharmacy sales analysis
SELECT
    medicine_name,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales,
    AVG(unit_price) AS average_unit_price
FROM pharmacy_sales
GROUP BY medicine_name
ORDER BY total_sales DESC;


