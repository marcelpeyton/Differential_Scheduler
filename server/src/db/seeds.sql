INSERT INTO appointment_blocks (on_site, base_time, rate_over_base_time, base_fee, rate_over_base_fee)
VALUES (false, 0, 0, 0, 0),       
-- NULL
       (false, 15, 100, 0, 10),     
-- Buyers dc
       (true, 30, 100, 50, 10),     
-- buyers rw
       (false, 30, 100, 75, 10),    
-- buyers cp
       (true, 15, 100, 50, 10),     
-- walk dc
       (true, 45, 100, 75, 50),     
-- walk rw
       (true, 60, 100, 50, 10),     
-- walk cp
       (true, 15, 0, 175, 0),       
-- radon
       (true, 75, 100, 125, 200),   
-- blue tape
       (true, 0, 0, 50, 0),         
-- minimize time
       (true, 45, 50, 50, 120),    
-- extra client time
       (false, 0, 0, 0, 0);          
--no client

INSERT INTO additional_services(title, data_collection, report_writing, client_presentation)
VALUES ('Blue Tape', 8, 3, 4),
       ('Radon', 9, 3, 4),
       ('Reinspection', 6, 7, 11),
       ('Accessory Dwelling Units', 2, 3, 4);

INSERT INTO availability_options(title, differential_scheduling, data_collection, report_writing, client_presentation)
VALUES ('Minimize Time On-site', true, 2, 3, 9),
       ('Additional Client Time', true, 2, 3, 10),
       ('Client will not be present', false, 2, 3, 11),
       ('First-time buyers', true, 2, 3, 10);

INSERT INTO dwelling_adjustments (dwelling_type, base_sq_ft, data_collection, report_writing, client_presentation)
VALUES ('Condo', 600, 2, 3, 4),
       ('Co-op', 600, 3, 3, 4),
       ('Townhouse', 700, 4, 3, 4),
       ('Single Family', 800, 5, 3, 4),
       ('Multi Family', 1500, 6, 3, 4);

INSERT INTO services(title, differential_scheduling, data_collection, report_writing, client_presentation)
VALUES ('Buyers Inspection', true, 2, 3, 4),
       ('Walk & Talk', false, 5, 6, 7),
       ('Investors Inspection', true, 2, 3, 4),
       ('Home Check-up and Maintenance Planning', true, 2, 3, 4),
       ('Pre-sale Walkthrough', false, 5, 6, 7),
       ('Developers Warranty Inspection', false, 2, 3, 7),
       ('Reinspection', false, 2, 3, 4);