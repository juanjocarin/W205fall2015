CREATE TABLE state AS
    SELECT DISTINCT state
    FROM hospitals;

CREATE TABLE hospital AS
    SELECT provider_id,
           state
    FROM hospitals;

CREATE TABLE measure AS
    SELECT p.measure_id,
           h.provider_id,
           p.score
    FROM effective_care as p
    LEFT JOIN hospitals as h
        ON p.hospital_name == h.hospital_name;

CREATE TABLE quality AS
    SELECT measure_id,
           provider_id,
           (hcahps_base_score - AVG(hcahps_base_score) ) / STDEV(hcahps_base_score) as hcahps_base_score_norm,
           (hcahps_consistency_score - AVG(hcahps_consistency_score) ) / STDEV(hcahps_consistency_score) as hcahps_consistency_score_norm

    FROM surveys_responses;

