--Creating database
Create database BasSql;

--Creating tables
create table Users
(
	UserId int IDENTITY(1,1),
	UserName varchar(50),
	UserPassword varchar(50),
	UserEmail varchar(50),
	ChampionName varchar(50),
	ChampionMoney int,
	ChampionLevel int,
	AvatarId int,
	primary key (UserId)
);

create table Attributes
(
	UserId int,
	Health int,
	Dexterity int,
	Strength int,
	Inteligence int
	primary key (UserId)
);

create table Stats
(
	UserId int,
	Wins int,
	Lose int,
	Fights int
	primary key (UserId)
);

create table Sets
(
	UserId int,
	HelmetId int,
	BodyArmorID int,
	GlovesId int,
	RingId int,
	BottomId int,
	Weapon int,
	DefenceWeapon int
	primary key (UserId)
);

create table DefItems
(
	ItemId int IDENTITY(1,1),
	ItemName varchar(50),
	ItemCategory varchar(20),
	ItemDescribe varchar(255),
	ItemImgSrc varchar(100),
	ItemProtection int,
	ItemHealth int,
	ItemDexterity int,
	ItemStrength int,
	ItemIntelligence int,
	primary key (ItemId)
);


create table DefItemAbility
(
	IdProtection int IDENTITY(1,1),
	ProtectionName varchar(20),
	ProtectionDescribe varchar(255),
	PRIMARY KEY (IdProtection)
);

create table WeaponItem
(
	ItemId int IDENTITY(1,1),
	ItemName varchar(50),
	ItemDescribe varchar(255),
	ItemImgSrc varchar(50),
	ItemDemageForce int,
	ItemHealth int,
	ItemDexterity int,
	ItemStrength int,
	ItemInteligence int,
	PRIMARY KEY (ItemId)
);

Create table Avatars
(
	AvatarId int IDENTITY(1,1),
	AvatarImgSrc varchar(100),
	AvatarName varchar(80),
	AvatarStory varchar(1000),
	AvatarSkillOne int,
	AvatarSkillTwo int,
	AvatarSkillThree int,
	Primary key (AvatarId)
);

Create table Skills
(
	SkillId int IDENTITY(1,1),
	SkillName varchar(50),
	SkillDescription varchar(1500),
	SkillImgSrc varchar(50),
	SkillForceCategory varchar(50),
	SkillForce float
);

Create table SoundTrack(
	IdMusic int IDENTITY(1,1),
	MusicTitle varchar(150),
	MusicSecondLength int,
	MusicBackGroundSrc varchar(150),
	MusicSource varchar(150)
);

-- INSERTS--

Insert into dbo.DefItemAbility VALUES 
('Fire Protection','This abilities gives your item special forces witch can protect your body from weapons dealing fire damage'),
('Swords Protection','Your armor was forged by a dark blacksmitch whos bestow your item special magic layer witch make your item more protected from swords'),
('Magic Protection','Your item was improve by the highest council of shamans. The Leged says that in this item will awakes part of the power of these shamans'),
('Arrow Protection','This item was improve by Druids from the southern forests, they used a  special thread and created  additialonal layer with will protect you before arrow during fight');

Insert into dbo.DefItems VALUES 
--BodyArmors
('Bleassed Armor','BodyArmor','the will be some desciption','\IMG\DefItems\Armors\Bleassed_Armor.png',1500, 6700, 210, 290, 210),
('Dragon Armor','BodyArmor','the will be some desciption','\IMG\DefItems\Armors\Dragon_Armor.png', 1200, 5200, 61, 210, 210),
('Forest Armor','BodyArmor','the will be some desciption','\IMG\DefItems\Armors\Forest_Armor.png', 800, 5200, 360, 30, 30),
('Guard Armor','BodyArmor','the will be some desciption','\IMG\DefItems\Armors\Guard_Armor.png', 500, 3600, 50, 160, 50),
('Leather Armor','BodyArmor','the will be some desciption','\IMG\DefItems\Armors\Leather_Armor.png', 150, 2200, 50,80,50),
('Magic Armor','BodyArmor','the will be IdMsome desciption','\IMG\DefItems\Armors\Magic_Armor.png', 800, 4200, 60, 30, 420),
('Strengthened Leather Armor','BodyArmor','the will be some desciption','\IMG\DefItems\Armors\Strengthened_Leather_Armor.png', 300, 3200, 80,120,80),
('Troll armor','BodyArmor','the will be some desciption','\IMG\DefItems\Armors\troll_armor.png', 800, 4300,20,200,50),
--Boots
('Buty Calvina','Boots','the will be some desciption','\IMG\DefItems\Boots\Celvins_boots.jpg', 600, 2500,20,180,110),
('Smocze buty','Boots','the will be some desciption','\IMG\DefItems\Boots\Dragon_boots.png', 800, 3000,40,200,230),
('Z??ote sanda??y','Boots','the will be some desciption','\IMG\DefItems\Boots\Gold_Sandal.png', 400, 1900,230,100,220),
('Buty my??liwskie','Boots','the will be some desciption','\IMG\DefItems\Boots\Hunter_Boots.png', 300, 800,150,100,100),
('Buty sk??rzane','Boots','the will be some desciption','\IMG\DefItems\Boots\Leather_Boots.png', 100, 300,70,100,100),
('Ulepszone buty sk??rzane','Boots','the will be some desciption','\IMG\DefItems\Boots\Improve_Leather_Boots.png', 350, 430,135,150,140),
('Buty kr??lewskiego stra??nika','Boots','the will be some desciption','\IMG\DefItems\Boots\KingdomGuard_boots.png', 574, 2250,120,213,60),
('Buty paladyna','Boots','the will be some desciption','\IMG\DefItems\Boots\Paladin_boots.png', 600, 2510,90,240,150),
--Gloves
('??elazne r??kawice','Gloves','the will be some desciption','\IMG\DefItems\Gloves\Iron_gloves.jpg', 230, 230,75,75,75),
('R??kawice krasnoluda','Gloves','the will be some desciption','\IMG\DefItems\Gloves\Dwarf_gloves.jpg', 480, 800,20,150,50),
('R??kawice zr??czno??ci','Gloves','the will be some desciption','\IMG\DefItems\Gloves\Dexterity_gloves.jpg', 480, 800,250,50,50),
('R??kawice Kr??la','Gloves','the will be some desciption','\IMG\DefItems\Gloves\King_gloves.jpg', 540, 1200,110,216,176),
('Magiczne r??kawice kr??la','Gloves','the will be some desciption','\IMG\DefItems\Gloves\Magic_king_gloves.jpg', 540, 1500,140,256,226),
('R??kawice paladyna','Gloves','the will be some desciption','\IMG\DefItems\Gloves\Paldin_gloves.jpg', 480, 1000,80,160,130),
('R??kawice ??ucznika','Gloves','the will be some desciption','\IMG\DefItems\Gloves\scout_gloves.jpg', 300, 600,190,50,40),
('R??kawice czarnoksi????nika','Gloves','the will be some desciption','\IMG\DefItems\Gloves\Wizard_magic_gloves.jpg', 300, 800,50,30,295),
--Helmets
('He??m krasnoluda','Helmet','the will be some desciption','\IMG\DefItems\Helmets\dwarf_helemet.jpg', 300, 500,40,120,70),
('He??m stra??nika le??nego','Helmet','the will be some desciption','\IMG\DefItems\Helmets\Forest_guard_helemet.jpg', 600, 1100,150,150,150),
('Z??oty he??m gladiatora','Helmet','the will be some desciption','\IMG\DefItems\Helmets\Golden_gladiator_helemet.jpg', 800, 1600,60,170,80),
('Wojenny ??elazny he??m','Helmet','the will be some desciption','\IMG\DefItems\Helmets\Iron_war_helmet.jpg', 600, 1300,70,150,40),
('Kr??lewski he??m','Helmet','the will be some desciption','\IMG\DefItems\Helmets\King_helmet.jpg', 900, 2200,80,190,170),
('Magicznie wzmocniony he??m','Helmet','the will be some desciption','\IMG\DefItems\Helmets\Magic_power_helemet.jpg', 500, 1100,80,40,150),
('He??m rodu szamn??w','Helmet','the will be some desciption','\IMG\DefItems\Helmets\shaman_helemet.jpg', 500, 1400,50,60,130),
('He??m sparty','Helmet','the will be some desciption','\IMG\DefItems\Helmets\spartan_helemet.jpg', 700, 1700,90,150,10),
--Ring
('Pier??cie?? zr??czno??ci','Ring','the will be some desciption','\IMG\DefItems\Ring\dexterity_ring.jpg', 50, 10,180,10,10),
('Ognisty pier??cie??','Ring','the will be some desciption','\IMG\DefItems\Ring\fire_ring.jpg', 100, 25,60,120,120),
('Pier??cie?? ??ycia','Ring','the will be some desciption','\IMG\DefItems\Ring\life_ring.jpg', 100, 150,10,10,20),
('Magiczny pier??cie??','Ring','the will be some desciption','\IMG\DefItems\Ring\magic_ring.jpg', 100, 10,10,10,150),
('Pier??cie?? wody','Ring','the will be some desciption','\IMG\DefItems\Ring\wather_ring.jpg', 100, 70,80,100,110),
--shield
('Smocza tarcza','Shield','the will be some desciption','\IMG\DefItems\Shield\Dragon_shield.jpg', 900, 1700,110,200,160),
('Tarcza krasnoluda','Shield','the will be some desciption','\IMG\DefItems\Shield\Dwraf_shield.jpg', 500, 700,70,130,50),
('Tarcza gladiatora','Shield','the will be some desciption','\IMG\DefItems\Shield\Gladiator_shield.jpg', 700, 700,30,140,50),
('Tarcza Paladyna','Shield','the will be some desciption','\IMG\DefItems\Shield\Paladin_shield.jpg', 500, 1000,80,170,150),
('Wzmocniona tarcza','Shield','the will be some desciption','\IMG\DefItems\Shield\Strengthened_shield.jpg', 180, 125,50,70,25),
('Zwyk??a tarcza','Shield','the will be some desciption','\IMG\DefItems\Shield\Usual_shield.jpg', 130, 110,40,50,25),
('Tarcza z roga trola','Shield','the will be some desciption','\IMG\DefItems\Shield\Troll_shield.jpg', 550, 610,70,120,50);

Insert into dbo.Weaponitem Values 
('Armageddon','there will be some desciption','\IMG\Weapon\StrengthWeapon\Armageddon.png',320,600, 60,200,60),
('Boskie ??wiat??o','there will be some desciption','\IMG\Weapon\StrengthWeapon\Divine_Light.jpg',410,1200, 100,220,140),
('Wilk, ??niwiarz Chaosu','there will be some desciption','\IMG\Weapon\StrengthWeapon\Wolf_Reaper_of_Chaos.jpg',710,2700, 150,320,150),
('Porzucony Diamentowy M??ot Stra??nika','there will be some desciption','\IMG\Weapon\StrengthWeapon\Forsaken_Diamond_Guardian.jpg',480,1500, 90,260,110),
('Espada','there will be some desciption','\IMG\Weapon\StrengthWeapon\Espada.jpg',350,1000, 60,220,30),
('Kr??lewska Chwa??a','there will be some desciption','\IMG\Weapon\StrengthWeapon\Royal_glory.jpg',380,1600, 120,290,140),
('Ogromny Stra??nik','there will be some desciption','\IMG\Weapon\StrengthWeapon\Massive_Guardian.jpg',330,800, 70,220,95),

Insert into Avatars 
Values 
('Wizz1.png','Czarownica','Zmys??owa i kobieca - z pewno??ci?? zawr??ci w g??owie niejednemu m????czy??nie, lecz strze?? si??! Czarownica w??ada najpot????niejszymi, siej??cymi zam??t i zniszczenie magicznymi zdolno??ciami i wykorzystuje do w??asnych cel??w pot????ne si??y czarnej energii',1,2,3),
('Guard1.png','Wykl??ty Rycerz','Charakteryzuj?? go szczeg??lne zasady post??powania. Niekiedy bardzo honorowe, innym razem tak godne po??a??owania, ??e zosta?? wygnany przez samego W??adc?? Ursbarduru. Przemierza Kr??lestwa w poszukiwaniu szcz????cia, bogactwa i wra??e??. Nie mo??na mu tak??e odm??wi?? silnych morale, sprytu oraz umiej??tno??ci zastraszania i prowokowania. Wz??r cn??t.',4,5,6),
('Scout1.png','M??wca','Niech Ci?? nie zwiedzie powierzchowno???? tego m??odego Elfa, pomimo anemicznego wygl??du i skromnej postury jego najci????szym or????em jest umys??. Inteligencja i zdolno??ci psychokinetyczne daj?? mu przewag?? nad t??gimi osi??kami i zbyt pewnymi siebie arogantami, p??kaj??cymi jak krwawe ba??ki mydlane od jednego pstrykni??cia palcem.
Jedyne co mo??e zak????ci?? jego moc to ... kobieta.',22,23,24),
('Wizz2.png','Druid','Jest starcem od zawsze, odk??d tylko si??ga pami??ci??. Nie wiadomo jak trafi?? do Ursbardur, lecz wypleni?? z Purpurowego Boru wszelkie plugastwa jakie zadomowi??y si?? w nim po ??wi??tej Nocy, wi??c osadnicy zostawili go w spokoju, czasami  tylko prosz??c o wyleczenie konaj??cej krowy lub pob??ogos??awienie plon??w. Druid ??yje w zgodzie z flor?? i faun??, kontroluje pogod?? i pozwala dzi??cio??owi spa?? w swoim kapeluszu.',13,14,15),
('guard2.png','Gladiator','Dobrze mu idzie nie tylko w walce, ale i sztuce aktorskiej. Ch??tnie w????czy si?? do b??jki, nie wa??ne po kt??rej stronie - wystarczy, ??e dobrze zap??acisz. Ka??da przelana krew wzmacnia go i popycha ku wi??kszemu okrucie??stwu. M??g??by?? powiedzie??, ??e to bestia zamkni??ta w ciele cz??owieka. Nie mylisz si??.',16,17,18),
('scout2.png','??owca','Tropienie ??lad??w, ??owiectwo, przetrwanie w dziczy, skradanie si??. To tylko cz?????? umiej??tno??ci ??owcy, a przynajmniej te, o kt??rych mo??e m??wi??. Kieruje nim w??asny kompas moralny przez co wys??ano za nim wiele list??w go??czych. Je??li jeste?? k??usownikiem, zbirem lub ??mia??kiem zapuszczajacym si?? w las po jego g??ow?? pilnuj, ??eby twoja pozosta??a na swoim miejscu.',25,26,27),
('girl1.png','Szamanka','Jej r??d mia?? chroni?? i leczy?? ??miertelnik??w, jednak po masakrze na jej rodzinie poprzysi??g??a ludziom zemst??. W??ada tajemniczymi mocami i wchodzi w umys?? wrog??w szerz??c strach i szale??stwo. Nie ma sobie r??wnych w sztuce skradania si?? i kamufla??u, wi??c miej si?? na baczno??ci.',7,8,9),
('prince1.png','Paladyn','??wi??ty wojownik broni??cy boskich praw i szlacheckich cn??t. Dzi??ki boskiej opatrzno??ci jako jedyny jest w stanie walczy?? z niumar??ymi Odwa??ny, prawy i zaprawiony w boju zawsze stanie w obronie prawdy i sprawiedliwo??ci przed nieko??cz??cymi si?? atakami z??a. Poza tym nie odm??wi uratowania pi??knej niewiasty od czasu do czasu.',10,11,12),
('dwarf1.png','Krasnolud','Rasa kolonist??w rozsianych po ca??ym ??wiecie, ??wietnie wyszkolona do walki i pieszych w??dr??wek. Krasnoludy znane s?? ze swojego niewielkiego wzrostu, nieugi??tego charakteru i du??ej si??y. Nie boj?? si?? ??adnej pracy, ani wyzwania, poza dosi??gni??ciem do najwy??szej p????ki.',19,20,21);



Insert into Skills
Values
('Poch??aniacz', 'Mag poch??ania czarn?? energi?? z duszy swojego przeciwnika i wykorzystuje j?? do zwi??kszenia swojej magicznej si??y','IMG\Skils\Witch\Pochlaniacz.png','Intelligence',1.3),
('Tchnienie ??mierci', 'Mag ????czy si?? z czarn?? energi?? poch??onion?? z duszy swojego przeciwnika, tworz??c pot????n?? dawk?? magicznej mocy. Nast??pnie zwraca j?? do swojego przeciwnika zadaj??c ogromne obra??enia duszy przeciwnika.','IMG\Skils\Witch\Tchnienie_Smierci.png','Intelligence',1.6),
('P??aszcz','Mag wykorzystuje wszystkie pok??ady nagromadzonej czarnej energi pozyskanej z duszy swojego przeciwnika a nast??pnie tworzy z niej magiczny p??aszcz otulaj??cy jego cia??o kt??ry chroni go przed atakami','IMG\Skils\Witch\Plaszcz.png','Health', 1.6),
('Ci??cie','Wykl??ty rycerz wykonuje szybkie ci??cia or????em powoduj??c krwawienie swojego przeciwnika doprowadzj??c do jego szybkiej ??mierci.','IMG\Skils\Accursed_knight\Ciecie.png','Strength', 1.4),
('Stalowa si??a','Wykl??ty rycerz jest ponad przeci??tnie odporny na ataki ze strony przeciwnik??w. Zaprawienie w licznych bojach zahartowa??o jego cia??o powoduj??c, ??e sta??o si?? ono bardziej odporne na wi??kszo???? atak??w','IMG\Skils\Accursed_knight\Stalowa_si??a.png','Health', 2.0),
('Wrzask','Wykl??ty rycerz swym ostrym krzykiem og??usza przeciwnik??w przez co zyskuje czas na unikni??cie ataku przeciwnika','IMG\Skils\Accursed_knight\Wrzask.png','Dexterity', 1.3),
('Truposze','Szamanka wskrzesza wszystkie pochowane cia??a w okolicy i rozkazuje im atakowa?? wskazanych przeciwnik??w','IMG\Skils\Shaman\truposze.png','Intelligence', 1.9),
('Jad','Szamanka wymawia zakl??cia zamieniaj??c sw??j ore?? w zakl??tego jadowitego w????a, kt??ry znacz??co zwi??ksza obra??enia zadawane od broni','IMG\Skils\Shaman\jad.png','Intelligence', 1.5),
('Noc Truposzy','Szamanka wpada w sza?? ??piewaj??c piosenk?? w tajemniczym j??zyku. Piosenka przebudza poleg??ych tego ??wiata, kt??rzy wynurzaj?? si?? z ziemi atakuj??c swoich przeciwnik??w','IMG\Skils\Shaman\noc_truposzy.png','Intelligence', 2.2),
('Szar??a','Paladyn rozpoczyna szar??e przeciwnik??w nios??c na ustach hymn swego kr??lestwa. Przeciwnicy odczuwaj?? przera??enie s??ysz??c dono??ny tupot ko??skich kopyt','IMG\Skils\Paladin\Szar??a.png','Strength', 3),
('B??ogos??awie??stwo','Paladyni jako ??wi??ci wojownicy zyskali b??ogos??awie??stwo bo??e, kt??re towarzyszy im w bitwach. Dzi??ki bo??ej ??asce paladyn jest najbardziej odpornym bohaterem na wszystkie ataki','IMG\Skils\Paladin\Blogoslawienstwo.png','Health', 2.6),
('Kometa','Paladyn w trudnych chwilach walki odmawia modlitw?? prosz??c swojego boga o wsparcie, modlitwy te zostaj?? wys??uchane a z nieba spada pot????na kometa ??miertelnie rani??ca przeciwnik??w','IMG\Skils\Paladin\Kometa.png','Strength', 1.7),
('Uderzenie','Druid ??aduje swoj?? lask?? si??ami natury a nast??pnie ude??a ni?? w swych przeciwnik??w zadaj??c obra??enia magiczne.','IMG\Skils\Druid\Uderzenie.png','Intelligence', 1.3),
('P??dziwiatr','Druid wykorzysuje si??y natury (powietrze) aby rozp??ta?? minitornado pod swoimi nogami. Czyni to go niebywale zwinnym i szybkim co pozwala unikn??c atak??w ze strony przeciwnik??w ','IMG\Skils\Druid\Pedziwiatr.png','Dexterity', 1.6),
('??ywa aura','Druid wykorzysuje wszystkie si??y natury (ogie??,wode,powietrze) ????czy je i buduje z nich magiczn?? tarcz?? otaczaj??c?? jego cia??o. Tak przygotowana os??ona pozwala mu zablokowa?? du???? cz?????? atak??w przeciwnika  ','IMG\Skils\Druid\zywa_aura.png','Health', 1.8),
('Triumf','Gladiator ocieka dum?? po serii ostatnich zwyci??stw. Duma ta dodaje mu otuchy i pewno??ci siebie przez co staje si?? mniej wra??liwy na b??l','IMG\Skils\Gladiator\Triumf.png','Health', 1.4),
('Natarcie','Gladiator pewnie rozpoczyna natarcie gdy tylko us??yszy gong rozpoczynaj??cy walk??, z szale??stwem rzuca si?? na przeciwnika powoduj??c u niego konsternacje oraz przyt??oczenie . Ale czy czasem taka pewno???? siebie nie przyniesie mu zguby ? ','IMG\Skils\Gladiator\Natarcie.png','Strength', 1.7),
('Ferwor','Gladiator ??wietnie czuje si?? w ferworze walki, adrenalina i zajad??o???? jaka towarzyszy mu na arenie powoduje, ??e traci on jakiekolwiek poczucie ??wiadomo??ci, b??lu nie m??wi??c ju?? o strachu...','IMG\Skils\Gladiator\Ferwor.png','Health', 1.9),
('B??j','Krasnoludy to rasa, kt??rej g????wnym celem w rzyciu jest toczenie boj??w... Z t?? cecha rodzi si?? ka??dy m??ody krasnolud. Napewno nie b??dzie to ??atwy przeciwnik...','IMG\Skils\Dwarf\Boj.png','Strength', 1.6),
('??amacz','Krasnoludy mocnym uderzeniem broni?? prze??amuje obron?? przeciwnika, og??uszaj??c go na sekund??. Tworzy sobi?? tym sposobem idealn?? sytuacj?? aby zada?? cios krytyczny','IMG\Skils\Dwarf\Lamacz.png','Strength', 1.9),
('Orze??','Krasnoludy od setek lat uwa??aj??, ??e najwspanialszym zwierz??ciem s?? or??y. Sta??y si?? one ich najwierniejszymi kompanami w walce i w ??yciu. Or??y rzucaj?? si?? na przeciwnika krasnoluda pozwalaj??c krasnolud?? unikn???? cios??w przeciwnika.','IMG\Skils\Dwarf\Orzel.png','Dexterity', 1.2),
('Kopniak','M??wca "sprzedaje" kopa swojemu przeciwnikowi zadaj??c mu obra??enia fizyczne','IMG\Skils\Speaker\Kopniak.png','Strength', 1.1),
('Rycie gara','M??wca zaczyna pierdzieli?? takie g??upoty, ??e doprowadza do pot????nego b??lu g??owy wszystkich przeciwnik??w znajduj??cych si?? w okolicy -||-"Ludzie woleli z??o??y?? bro?? ni?? s??ucha?? tego pitolenia"','IMG\Skils\Speaker\Rycie_gara.png','Strength', 1.3),
('Akcja ewakuacja','Jedyn?? odpornosci?? na umiej??tno??ci m??wcy jest... G??UCHOTA. Niesty zda??aj?? si?? g??usi jak pie?? przeciwnicy na, kt??rych jedyn?? broni?? jest ci????ki or????, kt??rego najpewniej m??wca nie uniesie. W takiej sytuacji nie pozostaje nic innego ni?? "Pakowa?? walize" ','IMG\Skils\Speaker\akcja_ewakuacja.png','Dexterity', 3),
('Strza??a','Najwi??kszy atutem ??ucznika jest zasi??g, ??ucznik mo??e zadawa?? ??miertelne obra??enia cel?? oddalonym o kilaset metr??w dalej.','IMG\Skils\Hunter\Strzala.png','Dexterity', 1.9),
('Zwi??zane nogi','??ucznicy s??yn?? z ??wietnego sprytu i zr??czno??ci. S?? zwinni i niezauwa??eni. Mimo, ??e walcz?? z dystansu potrafi?? podej???? naprawd?? blisko swojego przeciwnika aby wyrz??dzi?? mu psikusa. ??ucznik zakrada si?? do przeciwnika i w u??amku sekundy zwi??zuje mu buty tworz??c paj??czyn?? z jego sznur??wek','IMG\Skils\Hunter\Zwiazane_nogi.png','Dexterity', 2.1),
('Wszyscy razem','??ucznicy kryj?? si?? wsz??dzie nawet nie wiesz jak wielu mo??e ich by?? w twojej okolicy. ??ucznik g??o??nym krzykiem wzywa swoich przyjacieli i wszscy razem jednym t??pem zasypuj?? przeciwnik??w gradem strza??','IMG\Skils\Hunter\Wszyscy_razem.png','Dexterity', 1.8);


Insert into SoundTrack Values 
('loginPanelSound',121,'Null','..\..\..\SoundTrack\loginPanelSound.wav'),
('Cobblestone Village',258,'..\..\..\IMG\Sounds\SoundBG\medevial_music.png','..\..\..\SoundTrack\Cobblestone_Vlillage.wav'),
('Dragon Age???Tavern song',201,'..\..\..\IMG\Sounds\SoundBG\Dragon_Age_Tavern_song.jpg','..\..\..\SoundTrack\Enchanter_Dragon_Age_Inquisition_OST_Tavern_song.wav'),
('WOW-Taverns of Azeroth',121,'..\..\..\IMG\Sounds\SoundBG\World_of_warcraft-Taverns_Of_Azeroth.jpg','..\..\..\SoundTrack\World_of_Warcraft-Taverns_of_Azeroth.wav');
('Gothic-Old Camp',171,'..\..\..\IMG\Sounds\SoundBG\gothic_old_camp.jpg','..\..\..\SoundTrack\Gothic_Old_Camp.wav');

--Creating procedures 

create procedure dbo.GetPassword
	@EnteredUserName varchar(25)
as
begin
	select UserPassword From dbo.Users Where UserName = @EnteredUserName;
end
-------------------
Create procedure dbo.GetUser
	@EnteredUserName varchar(25)
as
begin
	select * From Users where UserName = @EnteredUserName;
end
--------------------
Create procedure dbo.GetUserAttributes
	@EnteredAttributesId int
as
begin
	select * From Attributes Where UserId = @EnteredAttributesId;
end
-------------------
Create procedure dbo.GetUserStats
	@EnteredStatsId int
as
begin
	select * From Stats Where UserId = @EnteredStatsId
end
-------------------
Create procedure GetDefItem
	@EnteredDefItemId int
as
begin
	select * From DefItems Where ItemId = @EnteredDefItemId
end
-------------------
Create procedure GetWeaponItem
	@EnteredWeaponItemId int
as
begin
	select * From WeaponItem Where ItemId = @EnteredWeaponItemId;
end
-------------------
Create procedure GetUserSets
	@EnteredSetId int
as
begin 
	select * From Sets Where UserId = @EnteredSetId
end
-------------------
Create procedure CheckUserExist
	@EnteredName varchar(50)
as
begin 
	select count(UserEmail) from Users where UserEmail= @EnteredName OR UserName = @EnteredName
end
-------------------
Create procedure InsertNewUser
	--Add user record
	@EnteredUserName varchar(50),
	@EnteredPassword varchar(50),
	@EnteredUserEmail varchar(50),
	@EnteredChampionName varchar(50),
	@EnteredChampionMoney int,
	@EnteredChampionLevel int,
	@EnteredAvatarId int,
	--Add attributes record
	@EnteredChampionHealth int,
	@EnteredChampionDexterity int,
	@EnteredChampionStrength int,
	@EnteredChampionInteligence int,
	--Add stats record
	@EnteredChampionWins int,
	@EnteredChampionLose int,
	@EnteredChampionFights int

as
begin
	--New record in Users Table
	Insert into dbo.Users Values (@EnteredUserName,@EnteredPassword,@EnteredUserEmail,@EnteredChampionName,@EnteredChampionMoney,@EnteredChampionLevel,@EnteredAvatarId)
	--Gets assigned ID for user record by Identity
	DECLARE @SelectedUserId AS INTEGER;
	SELECT @SelectedUserId = IDENT_CURRENT('dbo.Users')
	--New record in Attributes Table
	Insert into dbo.Attributes Values (@SelectedUserId,@EnteredChampionHealth,@EnteredChampionDexterity,@EnteredChampionStrength,@EnteredChampionInteligence)
	--New record in Stats Table
	Insert into dbo.Stats Values(@SelectedUserId,@EnteredChampionWins,@EnteredChampionLose,@EnteredChampionFights)
	--New record in Sets Table
	Insert into dbo.Sets(UserId) Values(@SelectedUserId)
end
-------------------
CREATE PROCEDURE GetAvatars
as
begin
	Select * From dbo.Avatars;
end
-------------------
CREATE PROCEDURE GetAvatar
	@EnteredAvatarId int
as
begin
	Select * From dbo.Avatars WHERE AvatarId = @EnteredAvatarId;
end
-------------------
CREATE PROCEDURE GetAvatarSkill
	@EnteredAvatarSkillId int
as
begin
	Select * From dbo.Skills Where SkillId = @EnteredAvatarSkillId;
end
-------------------
CREATE PROCEDURE GetSoundTracks
as
begin
	Select * From dbo.SoundTrack;
end