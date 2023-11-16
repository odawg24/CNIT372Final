# CNIT372Final

create table Country (
  CountryID varchar2(20) primary key,
  Population number,
  Gross_Tertiary_Education_Enrollment float(3,1),
  Unemployment_Rate float(4,2),
  Urban_Population number
);

create table Creator (
  AccountName varchar2(50),
  YoutuberID varchar2(20) primary key,
  Rank number,
  Category varchar2(20),
  CountryID varchar2(30),
  Country_Rank number,
  Lowest_Monthly_Earnings float(10,2),
  Highest_Monthly_Earnings float(10,2),
  constraint fk_CountryID foreign key (CountryID) references Country(CountryID)
);

create table Subscribers (
  YoutuberID varchar2(20),
  SubscriberAmount number,
  constraint fk_YoutuberID foreign key (YoutuberID) references Creator(YoutuberID)
);

create table content (
  ContentID varchar2(20) primary key,
  YoutuberID varchar2(20),
  Uploads number,
  Video_Views_Rank number,
  Channel_Type varchar2(20),
  Created_Year number,
  contraint fk_YoutuberID_2 foreign key (YoutuberID) references Creator(YoutuberID)
);
  
