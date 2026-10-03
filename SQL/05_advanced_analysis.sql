USE hospital_analytics;

SELECT
    dep.department_name,
    COUNT(v.visit_id) AS total_visits
FROM departments dep
INNER JOIN doctors d
    ON dep.department_id = d.department_id
INNER JOIN visits v
    ON d.doctor_id = v.doctor_id
GROUP BY dep.department_name
HAVING COUNT(v.visit_id) > 5
ORDER BY total_visits DESC;
SELECT
    bill_id,
    patient_id,
    total_amount,
    CASE
        WHEN total_amount >= 50000 THEN 'High Bill'
        WHEN total_amount >= 20000 THEN 'Medium Bill'
        ELSE 'Low Bill'
    END AS bill_category
FROM billing
ORDER BY total_amount DESC;
