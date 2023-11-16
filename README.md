-- CNIT372Final

-- Creating Tables

create table Country (
  Country varchar2(20) primary key,
  Population number,
  Gross_Tertiary_Education_Enrollment decimal(4,1),
  Unemployment_Rate decimal(4,2),
  Urban_Population number
);

create table Creator (
  Youtuber varchar2(50) primary key,
  Rank number,
  Category varchar2(20),
  Country varchar2(30),
  Country_Rank number,
  Lowest_Monthly_Earnings decimal(10,2),
  Highest_Monthly_Earnings decimal(10,2),
  constraint fk_Country foreign key (Country) references Country(Country)
);

create table Subscribers (
  Youtuber varchar2(20) primary key,
  SubscriberAmount number,
  constraint fk_Youtuber foreign key (Youtuber) references Creator(Youtuber)
);

create table Content (
  Youtuber varchar2(20) primary key,
  Uploads number,
  Video_Views_Rank number,
  Channel_Type varchar2(20),
  Created_Year number,
  constraint fk_Youtuber_2 foreign key (Youtuber) references Creator(Youtuber)
);

-- Inserting Data into Tables

-- Country Table

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Afghanistan', 9.7, 38041754, 11.2, 9797273);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Andorra', null, null, null, null);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Argentina', 90.0, 44938712, 9.79, 41339571);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Australia', 113.1, 25766605, 5.27, 21844756);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Bangladesh', 20.6, 167310838, 4.19, 60987417);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Barbados', 65.4, 287025, 10.33, 89431);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Brazil', 51.3, 212559417, 12.08, 183241641);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Canada', 68.9, 36991981, 5.56, 30628482);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Chile', 88.7, 18952038, 7.09, 16610135);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('China', 50.6, 1397715000, 4.32, 842933962);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Colombia', 55.3, 50339443, 9.71, 40827302);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Cuba', 41.4, 11333483, 1.64, 8739135);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Ecuador', 44.9, 17373662, 3.97, 11116711);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Egypt', 35.2, 100388073, 10.76, 42895824);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('El Salvador', 29.4, 6453553, 4.11, 4694702);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Finland', 88.2, 5520314, 6.59, 4716888);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('France', 65.6, 67059887, 8.43, 54123364);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Germany', 70.2, 83132799, 3.04, 64324835);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('India', 28.1, 1366417754, 5.36, 471031528);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Indonesia', 36.3, 270203917, 4.69, 151509724);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Iraq', 16.2, 39309783, 12.82, 27783368);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Italy', 61.9, 60297396, 9.89, 42651966);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Japan', 63.2, 126226568, 2.29, 126226568);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Jordan', 34.4, 10101694, 14.72, 9213048);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Kuwait', 54.4, 4207083, 2.18, 4207083);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Latvia', 41.4, 11333483, 1.64, 8739135);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Malaysia', 45.1, 32447385, 3.32, 24475766);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Mexico', 40.2, 126014024, 3.42, 102626859);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Morocco', 35.9, 36910560, 9.02, 22975026);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Netherlands', 85.0, 17332850, 3.20, 15924729);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Pakistan', 9.0, 216565318, 4.45, 79927762);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Peru', 70.7, 32510453, 3.31, 25390339);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Philippines', 35.5, 108116615, 2.15, 50975903);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Russia', 81.9, 144373535, 4.59, 107683889);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Samoa', 7.6, 202506, 8.36, 35588);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Saudi Arabia', 68.0, 34268528, 5.93, 28807838);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Singapore', 84.8, 5703569, 4.11, 5703569);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('South Korea', 94.3, 51709098, 4.15, 42106719);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Spain', 88.9, 47076781, 13.96, 37927409);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Sweden', 67.0, 10285453, 6.48, 9021165);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Switzerland', 59.6, 8574832, 4.58, 6332428);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Thailand', 49.3, 69625582, 0.75, 35294600);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Turkey', 23.9, 83429615, 13.49, 63097818);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Ukraine', 82.7, 44385155, 8.88, 30835699);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('United Arab Emirates', 36.8, 9770529, 2.35, 8479744);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('United Kingdom', 60.0, 66834405, 3.85, 55908316);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('United States', 88.2, 328239523, 14.7, 270663028);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Venezuela', 79.3, 28515829, 8.8, 25162368);

insert into country (country, gross_tertiary_education_enrollment, population, unemployment_rate, urban_population)
values ('Vietnam', 28.5, 96462106, 2.01, 35332140);
