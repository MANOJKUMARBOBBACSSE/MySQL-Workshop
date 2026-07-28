create database functiondatamysql;

use functiondatamysql;

CREATE TABLE Hospital (
    Hospital_Code INT PRIMARY KEY,
    Hospital_Name VARCHAR(100) NOT NULL,
    Hospital_Location VARCHAR(1000) NOT NULL
);

INSERT INTO Hospital VALUES
(101,'VS Hospital',
'No. 815/306, Poonamallee High Road, Kilpauk, Chennai, Chennai District, Tamil Nadu - 600010'),

(102,'Apollo Hospital',
'No. 21, Greams Lane, Greams Road, Thousand Lights, Chennai, Chennai District, Tamil Nadu - 600006'),

(103,'BLK Super Speciality Hospital',
'No. 5, Pusa Road, Rajendra Place, New Delhi, Central Delhi District, Delhi - 110005'),

(104,'Max Super Speciality Hospital',
'Plot No. 1, Sector 56, Phase 6, Mohali, Sahibzada Ajit Singh Nagar District, Punjab - 160055'),

(105,'Medanta - The Medicity',
'CH Baktawar Singh Road, Sector 38, Gurugram, Gurugram District, Haryana - 122001'),

(106,'Fortis Hospital',
'No. 154/9, Bannerghatta Road, Opposite IIM Bangalore, Bengaluru, Bengaluru Urban District, Karnataka - 560076'),

(107,'Artemis Hospital',
'Sector 51, Golf Course Extension Road, Gurugram, Gurugram District, Haryana - 122001'),

(108,'Wockhardt Hospital',
'Wani House, Mumbai Agra Road, Wadala Naka, Nashik, Nashik District, Maharashtra - 422001'),

(109,'Narayana Health',
'No. 258/A, Bommasandra Industrial Area, Hosur Road, Bengaluru, Bengaluru Urban District, Karnataka - 560099'),

(110,'Columbia Asia Hospital',
'No. 85-1, Bannimantapa A Layout, Mysuru, Mysuru District, Karnataka - 570015');


-- drop table Hospital;


SELECT * FROM Hospital;
-- Concept:
-- The UPPER() function is a MySQL string function used to convert all alphabetic characters in a string to uppercase.
select upper(Hospital_Name) as uppercasename from Hospital;

select upper(Hospital_Name) as uppercasename from Hospital where Hospital_Code = 104;

select upper("Manojkumarbooba") uppercasename;

-- Concept:
-- The LOWER() function is a MySQL string function used to convert all alphabetic characters in a string to lowercase.
select lower(Hospital_Name) as lowercasename from hospital;

select lower("MANOJKUMAR") as lowercase_name;

-- Concept:
-- The LENGTH() function is a MySQL string function used to return the total number of bytes in a string.

select Hospital_Location,length(Hospital_Location) as HosplitalLength from hospital
where length(Hospital_Location) < 100;

-- Concept:
-- The REVERSE() function is a MySQL string function used to return a string with its characters in reverse order.
select Hospital_Name,reverse(Hospital_Name) as Reversename from hospital
where Hospital_Code = 105;

select Hospital_Name,reverse(Hospital_Name) as Reversename from hospital
where reverse(Hospital_Name) like "%soH%";  	

-- Concept:
-- The CONCAT() function is a MySQL string function used to combine two or more strings into a single string.
select concat(Hospital_Name," - ",Hospital_Code) as Hospital_info from hospital;

select concat(Hospital_Name,NULL) from hospital;

-- Concept:
-- The SUBSTR() function is a MySQL string function used to extract a specified portion of a string starting from a given position.

select substr(Hospital_Name,4) from hospital where Hospital_Code = 101;

-- Concept:
-- The INSTR() function is a MySQL string function used to return the position of the first occurrence of a substring within a string.-- 

select instr(Hospital_Location,"H") as location_of_H from hospital;
select instr(Hospital_Location,"X") as location_of_H from hospital;

select substr(Hospital_Location,instr(Hospital_Location,"H")) as start_from_Letter_H from hospital;

select substr(Hospital_Name,instr(Hospital_Name,"H"),8) from hospital;
-- Concept:
-- The REPLACE() function is a MySQL string function used to replace all occurrences of a specified substring with a new substring.

select replace(Hospital_Name,"Hospital","H*") from hospital;

-- Concept:
-- The TRIM() function is a MySQL string function used to remove leading and trailing spaces or specified characters from a string.

select trim(leading from " kodnest  ");
select trim(trailing from "    kodnest  ");

select trim(both from "  kodnest  ");

select trim(both from Hospital_Location) from hospital where Hospital_Code = 101;


-- Concept:
-- The LEFT() function is a MySQL string function used to return the specified number of characters from the left side of a string.

select left(Hospital_Location,5) as after5thchar from hospital;

select left(Hospital_Name,3) as first3rdchar from hospital where Hospital_Code = 101;

-- Concept:
-- The RIGHT() function is a MySQL string function used to return the specified number of characters from the right side of a string.

select right(Hospital_Location,7) as lastchar from hospital;

select right(Hospital_Name,4) as fourchar from hospital where Hospital_Code = 101;

-- Concept:
-- The ASCII() function is a MySQL string function used to return the ASCII value of the leftmost character in a string.

select ascii(substr(Hospital_Name,3,1)) as 3nd_value_ascii from hospital;