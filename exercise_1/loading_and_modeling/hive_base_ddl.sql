DROP TABLE hospitals;
CREATE EXTERNAL TABLE hospitals(
provider_id varchar(500),
hospital_name varchar(500),
address varchar(500),
city varchar(500),
state varchar(500),
zip_code varchar(500),
county_name varchar(500),
phone_number varchar(500),
hospital_type varchar(500),
hospital_ownership varchar(500),
emergency_services varchar(500))
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare';
DROP TABLE effective_care;
CREATE EXTERNAL TABLE effective_care(
provider_id varchar(500),
hospital_name varchar(500),
address varchar(500),
city varchar(500),
state varchar(500),
zip_code varchar(500),
county_name varchar(500),
phone_number varchar(500),
condition varchar(500),
measure_id varchar(500),
measure_name varchar(500),
score varchar(500),
sample varchar(500),
footnote varchar(500),
measure_start_date varchar(500),
measure_end_date varchar(500))
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare';
DROP TABLE readmissions;
CREATE EXTERNAL TABLE readmissions(
provider_id varchar(500),
hospital_name varchar(500),
address varchar(500),
city varchar(500),
state varchar(500),
zip_code varchar(500),
county_name varchar(500),
phone_number varchar(500),
mesure_name varchar(500),
measure_id varchar(500),
compared_to_national varchar(500),
denominator varchar(500),
score varchar(500),
lower_estimate varchar(500),
higher_estimate varchar(500),
footnote varchar(500),
measure_start_date varchar(500),
measure_end_date varchar(500))
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare';
DROP TABLE surveys_responses;
CREATE EXTERNAL TABLE surveys_responses(
provider_number varchar(500),
hospital_name varchar(500),
address varchar(500),
city varchar(500),
state varchar(500),
zip_code varchar(500),
county_name varchar(500),
com_nurses_achieve_points varchar(500),
com_nurses_improve_points varchar(500),
com_nurses_dim_score varchar(500),
com_doctors_achieve_points varchar(500),
com_doctors_improve_points varchar(500),
com_doctors_dim_score varchar(500),
responsiveness_staff_achieve_points varchar(500),
responsiveness_staff_improve_points varchar(500),
responsiveness_staff_dim_score varchar(500),
pain_mngment_achieve_points varchar(500),
pain_mngment_improve_points varchar(500),
pain_mngment_dim_score varchar(500),
com_medicines_achieve_points varchar(500),
com_medicines_improve_points varchar(500),
com_medicines_dim_score varchar(500),
cleanliness_achieve_points varchar(500),
cleanliness_improve_points varchar(500),
cleanliness_dim_score varchar(500),
discharge_info_achieve_points varchar(500),
discharge_info_improve_points varchar(500),
discharge_info_dim_score varchar(500),
overall_rating_achieve_points varchar(500),
overall_rating_improve_points varchar(500),
overall_rating_dim_score varchar(500),
hcahps_base_score varchar(500),
hcahps_consistency_score varchar(500))
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare';
DROP TABLE measure_dates;
CREATE EXTERNAL TABLE measure_dates(
measure_name varchar(500),
measure_id varchar(500),
measure_start_quarter varchar(500),
measure_start_date varchar(500),
measure_end_quarter varchar(500),
measure_end_date varchar(500))
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare';
