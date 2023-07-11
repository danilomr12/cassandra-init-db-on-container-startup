CREATE TABLE shipments.trips
(
    waybill_sn              BIGINT PRIMARY KEY,
    start_location          TEXT,
    end_location            TEXT,
    waybill_created_date    DATE,
    actual_eta              INT,
    initial_eta             INT,
    tri_punctuality_in_days INT
);