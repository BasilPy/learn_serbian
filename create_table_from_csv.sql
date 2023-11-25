CREATE TABLE eng_srb_verb_a (
	inf_eng text,
	inf text,
	present_I text,
	present_thou text,
	present_one text,
	present_we text,
	present_you text,
	present_they text
);
-- INSERT INTO public.eng_srb_verb_a (
-- -- 	inf_eng, inf, present_i, present_thou, present_one, present_we, present_you, present_they)
-- -- -- 	VALUES ('have','imati','imam','imaš','ima','imamo','imate','imaju');

COPY eng_srb_verb_a (inf_eng, inf, present_i, present_thou, present_one, present_we, present_you, present_they) 
FROM '/tmp/srb_verbs.csv'
DELIMITER ',' 
CSV HEADER;
SELECT * FROM eng_srb_verb_a;