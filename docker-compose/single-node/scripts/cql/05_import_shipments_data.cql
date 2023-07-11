COPY shipments.trips (waybill_sn, start_location, end_location, waybill_created_date, actual_eta,initial_eta, tri_punctuality_in_days)
    FROM '/tmp/cql/trips.csv'
WITH HEADER = true;