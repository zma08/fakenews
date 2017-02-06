use master; 
go

create database [HWorld] on primary
(name = [HWorld], filename = 'C:\Users\mazhe\Documents\cs461\returnnull_zhendong\ClassProject\HelloWorld\HelloWorld\App_Data\HWorld.mdf')
log on(name = [HWorld_log], filename = 'C:\Users\mazhe\Documents\cs461\returnnull_zhendong\ClassProject\HelloWorld\HelloWorld\App_Data\HWorld_log.ldf')

drop table if exists [dbo].[Articles]

--create table [t1]
--(
--	id int not null identity(1,1),
--	dateclick datetime2 
--)

create table [dbo].[Articles]
(
	Id int not null identity(1,1),
	Title nvarchar(100) not null,
	Content nvarchar(max) not null,
	Constraint [pk_dbo.Articles] primary key clustered ([Id]asc)
);
insert into [Articles] (Title, Content)values('The Greatest America From Trump','Trump will bring the US GDP to 4% and create 1 billion of new jobs in next 4 years, Yes make the America great again!');

insert into [Articles] (Title, Content)values('Obama Signs Executive Order Banning The Pledge Of Allegiance In Schools Nationwide','WASHINGTON, D.C. (AP) — Early this morning, President Obama made what could very well prove to be the most controversial move of his presidency with the signing of Executive Order 13738, which revokes the federal government’s official recognition of the Pledge of Allegiance. Under the new order, it is now illegal for any federally funded agency to display the pledge or for any federal employee to recite, or encourage others to recite, the pledge while on duty. This law also applies to federal contractors and other institutions that receive federal funding such as public schools. Individuals who violate this order can face fines of up to $10,000 and up to one year in federal prison.');

insert into [Articles] (Title, Content)values('Woman arrested for defecating on boss’ desk after winning the lottery','The courier company had no idea of her winnings. “I knew something was wrong because I came back from lunch and the door to my office was closed,” said the manager. I slowly opened the door to discover the woman with her pants around her ankles, hunched over on my desk like a hippopotamus/cheetah dropping a massive poo on my desk. She shot her head towards me and locked eyes. I was frozen in shock and fear. In my peripheral vision I saw a huge mud-monkey sliming out of her butt like a Play-Doh fun factory.” “It was worth it,” the woman said on arrest. “On Friday when I realized I hit the lotto, I knew this would be the first thing I would do. I hit up every Mexican food truck and saved my dumps all weekend. I was shuffling around like a death-row inmate trying not to explode. I’ve been putting up with that guy’s shit for years, it’s time he put up with some of mine.”');

insert into [Articles] (Title, Content)values('Trump Offering Free One-Way Tickets to Africa & Mexico for Those Who Wanna Leave America','Trump Airlines has received many requests to begin services to Africa and Mexico after he was elected as the next President. The Vice President for Trump Airlines announced this morning that TA will be giving away one way tickets to The Motherland and El Chapo’s World but they will not be offering return flights. Trump Airlines is known for their discount rates and now they’ll be the only airline that only sells one way flights to a location.');

insert into [Articles] (Title, Content)values('Florida man dies in meth-lab explosion after lighting farts on fire','The man’s wife was found lying naked on the couple’s front yard, reportedly still laughing. “A Blue Angel is when you put a lighter up to your butt and fart on it, making it catch on fire. It’s funny as s—,” explains the mans wife, who claims to be an expert on the subject. “Normally we go to Del Taco because of their $0.59 tacos, but we made some extra cash this week so we went to Chipotle. The farts you get from there could fill a gas chamber. I know he’s looking up from hell laughing his ass off saying it was worth it,” she says smiling through blackened teeth, apparently not caused by the fire.The woman plans on suing Chipotle, which failed to address their peppers causing a higher rate of methane in human farts. She offered a statement, “I’m not mad about my husband dying, I just got my eyebrows did and now they’re gone.” Chipotle Mexican Grill has yet to respond.');
