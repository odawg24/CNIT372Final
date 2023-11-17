--Question 1
select accountname from creator inner join country on creator.countryid = country.countryid where country = 'United States' order by subscribers desc;

--Question2
select subscribers from creator where accountname = 'MrBeast'; 

--Question 3
select accountname from creator where highest_monthly_earnings in (select max(highest_monthly_earnings) from creator;

--Question 4
select accountname from creator where lowest_monthly_earnings in (select max(lowest_monthly_earnings) from creator;

--Question 5
create or replace procedure highestPops as

cursor countries is select * from country order by population;
cur_country country%rowtype;
v_countryname charchar2(30);
v_population number;
v_urban_pop number;

begin
open countries;
for i in 1 .. 10 loop
	fetch countries into cur_country;
	v_population := cur_country.population;
	v_urban_pop := cur_country.urban_population;
	v_countryname := cur_country.countryname;
	dbms_output.put_line(v_countryname || ' has a population of: ' || v_population || ' and an urban population of ' || v_urban_pop);
end loop;
close countries;
end;



