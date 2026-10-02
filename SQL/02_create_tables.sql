USE hospital_analytics;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);
CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(100) NOT NULL,
    gender VARCHAR(20),
    date_of_birth DATE,
    city VARCHAR(100),
    registration_date DATE
);
SHOW TABLES;
CREATE TABLE visits (
    visit_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    visit_type VARCHAR(20),
    visit_date DATE,
    admission_date DATE,
    discharge_date DATE,
    diagnosis VARCHAR(150),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);
SHOW TABLES;
CREATE TABLE billing (
    bill_id INT PRIMARY KEY,
    visit_id INT,
    patient_id INT,
    bill_date DATE,
    total_amount DECIMAL(10,2),
    insurance_amount DECIMAL(10,2),
    patient_amount DECIMAL(10,2),
    payment_status VARCHAR(30),
    FOREIGN KEY (visit_id) REFERENCES visits(visit_id),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);
SHOW TABLES;
CREATE TABLE procedures (
    procedure_id INT PRIMARY KEY,
    visit_id INT,
    procedure_name VARCHAR(150),
    procedure_cost DECIMAL(10,2),
    FOREIGN KEY (visit_id) REFERENCES visits(visit_id)
);
SHOW TABLES;
CREATE TABLE pharmacy_sales (
    sale_id INT PRIMARY KEY,
    patient_id INT,
    visit_id INT,
    medicine_name VARCHAR(150),
    quantity INT,
    unit_price DECIMAL(10,2),
    sale_date DATE,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (visit_id) REFERENCES visits(visit_id)
);
SHOW TABLES;