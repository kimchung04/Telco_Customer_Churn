-- create the services table
CREATE TABLE services (
    service_id SERIAL PRIMARY KEY,
    service_type VARCHAR(30),
    service_cost DECIMAL(10,2)
);

-- create the contracts table
CREATE TABLE contracts (
    contract_id SERIAL PRIMARY KEY,
    customer_id VARCHAR REFERENCES customers(customer_id),
    start_date DATE,
    end_date DATE,
    monthly_cost DECIMAL(10,2),
    contract_type VARCHAR(30)
);

-- create the payments table
CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    customer_id VARCHAR REFERENCES customers(customer_id),
    payment_date DATE,
    payment_amount DECIMAL(10,2),
    payment_method VARCHAR(30)
);

-- create the complaints table
CREATE TABLE complaints (
    complaint_id SERIAL PRIMARY KEY,
    customer_id VARCHAR REFERENCES customers(customer_id),
    complaint_date DATE,
    complaint_type VARCHAR(30),
    resolution VARCHAR(30)
);

CREATE TABLE customers (
    customer_id VARCHAR PRIMARY KEY,
    gender VARCHAR(10),
    senior_citizen INTEGER,
    partner VARCHAR(10),
    dependents VARCHAR(10),
    tenure INTEGER,
    phone_service VARCHAR(10),
    multiple_lines VARCHAR(30),
    internet_service VARCHAR(30),
    online_security VARCHAR(30),
    online_backup VARCHAR(30),
    device_protection VARCHAR(30),
    tech_support VARCHAR(30),
    streaming_tv VARCHAR(30),
    streaming_movies VARCHAR(30),
    contract VARCHAR(30),
    paperless_billing VARCHAR(10),
    payment_method VARCHAR(30),
    monthly_charges NUMERIC,
    total_charges VARCHAR(10),
    churn VARCHAR(10)
);

DROP TABLE customers;

COPY customers FROM 'Class Folder/Archive/WA_Fn-UseC_-Telco-Customer-Churn.csv' DELIMITER ',' CSV HEADER;