CREATE TABLE Araba_Bilgisi(
Arac_ID INTEGER IDENTITY(1,1) NOT NULL,
Arac_Plaka VARCHAR(20) NOT NULL,
Arac_Rengi VARCHAR(20) NOT NULL,
Kira_ID int,
Arac_Modeli VARCHAR(11) NOT NULL

PRIMARY KEY CLUSTERED 
 (
    Arac_ID ASC
 )WITH(PAD_INDEX=OFF, STATISTICS_NORECOMPUTE=OFF, IGNORE_DUP_KEY=OFF, ALLOW_ROW_LOCKS=ON, ALLOW_PAGE_LOCKS=ON) ON [PRIMARY] 
)ON [PRIMARY]

CREATE TABLE Kira_Bilgisi(
Kira_ID INTEGER IDENTITY(1,1) NOT NULL,
Teslim_Tarihi varchar(20) NOT NULL,
Musteri_ID int,
PRIMARY KEY CLUSTERED 
 (
    Kira_ID ASC
 )WITH(PAD_INDEX=OFF, STATISTICS_NORECOMPUTE=OFF, IGNORE_DUP_KEY=OFF, ALLOW_ROW_LOCKS=ON, ALLOW_PAGE_LOCKS=ON) ON [PRIMARY] 
)ON [PRIMARY]

CREATE TABLE Gelir(
Gelir_ID INTEGER IDENTITY (1,1) NOT NULL,
Arac_ID int,
Kira_Ucreti VARCHAR(20) NOT NULL,
Musteri_ID int,

PRIMARY KEY CLUSTERED 
 (
    Gelir_ID ASC
 )WITH(PAD_INDEX=OFF, STATISTICS_NORECOMPUTE=OFF, IGNORE_DUP_KEY=OFF, ALLOW_ROW_LOCKS=ON, ALLOW_PAGE_LOCKS=ON) ON [PRIMARY] 
)ON [PRIMARY]


CREATE TABLE Musteri_Bilgisi(
Musteri_ID INTEGER IDENTITY(1,1) NOT NULL,
Musteri_Adi VARCHAR(20) NOT NULL,
Musteri_Soyadi VARCHAR(20) NOT NULL,
Musteri_Telefon VARCHAR(11) NOT NULL
PRIMARY KEY CLUSTERED 
 (
    Musteri_ID ASC
 )WITH(PAD_INDEX=OFF, STATISTICS_NORECOMPUTE=OFF, IGNORE_DUP_KEY=OFF, ALLOW_ROW_LOCKS=ON, ALLOW_PAGE_LOCKS=ON) ON [PRIMARY] 
)ON [PRIMARY]




INSERT INTO Araba_Bilgisi(Arac_Plaka,Arac_Rengi,Kira_ID,Arac_Modeli)VALUES ('34 MV 5864','Kýrmýzý',7,'BMW')
INSERT INTO Araba_Bilgisi(Arac_Plaka,Arac_Rengi,Kira_ID,Arac_Modeli)VALUES ('24 FB 1907','Siyah',8,'Wolksvagen')
INSERT INTO Araba_Bilgisi(Arac_Plaka,Arac_Rengi,Kira_ID,Arac_Modeli)VALUES ('24 DN 190','Gri',10,'Mercedes')
INSERT INTO Araba_Bilgisi(Arac_Plaka,Arac_Rengi,Kira_ID,Arac_Modeli)VALUES ('34 ESR 5672','Turuncu',1,'Fiat')
INSERT INTO Araba_Bilgisi(Arac_Plaka,Arac_Rengi,Kira_ID,Arac_Modeli)VALUES ('06 DS 7229','Beyaz',12,'Jaguar')
INSERT INTO Araba_Bilgisi(Arac_Plaka,Arac_Rengi,Kira_ID,Arac_Modeli)VALUES ('46 ODA 6971','Siyah',6,'BMW')
INSERT INTO Araba_Bilgisi(Arac_Plaka,Arac_Rengi,Kira_ID,Arac_Modeli)VALUES ('38 SPG 2678','Mavi',4,'Dacia')
INSERT INTO Araba_Bilgisi(Arac_Plaka,Arac_Rengi,Kira_ID,Arac_Modeli)VALUES ('58 FOH 6845','Siyah',3,'Porsche')
INSERT INTO Araba_Bilgisi(Arac_Plaka,Arac_Rengi,Kira_ID,Arac_Modeli)VALUES ('81 ADK 2542','Beyaz',5,'Audi')
INSERT INTO Araba_Bilgisi(Arac_Plaka,Arac_Rengi,Kira_ID,Arac_Modeli)VALUES ('43 LSC 4521','Kýrmýzý',2,'Hundai')
INSERT INTO Araba_Bilgisi(Arac_Plaka,Arac_Rengi,Kira_ID,Arac_Modeli)VALUES ('01 SLF 5864','Siyah',9,'Mercedes')
INSERT INTO Araba_Bilgisi(Arac_Plaka,Arac_Rengi,Kira_ID,Arac_Modeli)VALUES ('79 LS 2493','Beyaz',11,'BMW')



INSERT INTO Kira_Bilgisi(Teslim_Tarihi,Musteri_ID)VALUES ('05.12.2024',2)
INSERT INTO Kira_Bilgisi(Teslim_Tarihi,Musteri_ID)VALUES ('19.07.2027',1) 
INSERT INTO Kira_Bilgisi(Teslim_Tarihi,Musteri_ID)VALUES ('06.12.2023',3)
INSERT INTO Kira_Bilgisi(Teslim_Tarihi,Musteri_ID)VALUES ('23.01.2026',12)
INSERT INTO Kira_Bilgisi(Teslim_Tarihi,Musteri_ID)VALUES ('20.07.2025',7)
INSERT INTO Kira_Bilgisi(Teslim_Tarihi,Musteri_ID)VALUES ('01.06.2023',8)
INSERT INTO Kira_Bilgisi(Teslim_Tarihi,Musteri_ID)VALUES ('17.08.2025',9)
INSERT INTO Kira_Bilgisi(Teslim_Tarihi,Musteri_ID)VALUES ('25.12.2024',11)
INSERT INTO Kira_Bilgisi(Teslim_Tarihi,Musteri_ID)VALUES ('05.06.2023',4)
INSERT INTO Kira_Bilgisi(Teslim_Tarihi,Musteri_ID)VALUES ('10.04.2025',5)
INSERT INTO Kira_Bilgisi(Teslim_Tarihi,Musteri_ID)VALUES ('21.01.2022',6)
INSERT INTO Kira_Bilgisi(Teslim_Tarihi,Musteri_ID)VALUES ('31.03.2024',10)

INSERT INTO Gelir(Arac_ID,Kira_Ucreti,Musteri_ID)VALUES (1,'72000',5)
INSERT INTO Gelir(Arac_ID,Kira_Ucreti,Musteri_ID)VALUES (2,'73000',4)
INSERT INTO Gelir(Arac_ID,Kira_Ucreti,Musteri_ID)VALUES (3,'102500',1)
INSERT INTO Gelir(Arac_ID,Kira_Ucreti,Musteri_ID)VALUES (4,'56450',3)
INSERT INTO Gelir(Arac_ID,Kira_Ucreti,Musteri_ID)VALUES (5,'72277',2)
INSERT INTO Gelir(Arac_ID,Kira_Ucreti,Musteri_ID)VALUES (6,'62000',7)
INSERT INTO Gelir(Arac_ID,Kira_Ucreti,Musteri_ID)VALUES (7,'86000',6)


INSERT INTO Musteri_Bilgisi(Musteri_Adi,Musteri_Soyadi,Musteri_Telefon)VALUES ('Elif','Kalaycý','02162931224')
INSERT INTO Musteri_Bilgisi(Musteri_Adi,Musteri_Soyadi,Musteri_Telefon)VALUES ('Sefa','Kavuþ','02163544298')
INSERT INTO Musteri_Bilgisi(Musteri_Adi,Musteri_Soyadi,Musteri_Telefon)VALUES ('Cihan','Seven','05385469278')
INSERT INTO Musteri_Bilgisi(Musteri_Adi,Musteri_Soyadi,Musteri_Telefon)VALUES ('Asyanaz','Uysal','05376539165')
INSERT INTO Musteri_Bilgisi(Musteri_Adi,Musteri_Soyadi,Musteri_Telefon)VALUES ('Dilara','Seven','05531646232')
INSERT INTO Musteri_Bilgisi(Musteri_Adi,Musteri_Soyadi,Musteri_Telefon)VALUES ('Sevdenur','Dastan','05549428641')
INSERT INTO Musteri_Bilgisi(Musteri_Adi,Musteri_Soyadi,Musteri_Telefon)VALUES ('Necip','Okaner','05320331907')
INSERT INTO Musteri_Bilgisi(Musteri_Adi,Musteri_Soyadi,Musteri_Telefon)VALUES ('Eda','Dede','05387529824')
INSERT INTO Musteri_Bilgisi(Musteri_Adi,Musteri_Soyadi,Musteri_Telefon)VALUES ('Irmak','Deveci','05546581379')
INSERT INTO Musteri_Bilgisi(Musteri_Adi,Musteri_Soyadi,Musteri_Telefon)VALUES ('Menekþe','Pala','05386584924')
INSERT INTO Musteri_Bilgisi(Musteri_Adi,Musteri_Soyadi,Musteri_Telefon)VALUES ('Esra','Kapýcý','05619759312')
INSERT INTO Musteri_Bilgisi(Musteri_Adi,Musteri_Soyadi,Musteri_Telefon)VALUES ('Barýþ','Özcan','05346953185')













ALTER TABLE Gelir WITH CHECK ADD CONSTRAINT [FK_gelirarac] FOREIGN KEY(Arac_ID) REFERENCES Araba_Bilgisi (Arac_ID) 
ALTER TABLE Gelir CHECK CONSTRAINT [FK_gelirarac]

ALTER TABLE Araba_Bilgisi WITH CHECK ADD CONSTRAINT [FK_arackira] FOREIGN KEY(Kira_ID) REFERENCES Kira_Bilgisi (Kira_ID) 
ALTER TABLE Araba_Bilgisi CHECK CONSTRAINT [FK_arackira] 

ALTER TABLE Kira_Bilgisi WITH CHECK ADD CONSTRAINT [FK_kiramusteri] FOREIGN KEY(Musteri_ID) REFERENCES Musteri_Bilgisi (Musteri_ID) 
ALTER TABLE Kira_Bilgisi CHECK CONSTRAINT [FK_kiramusteri] 


Create procedure arabakira
as
begin
set nocount on;
select * from Araba_Bilgisi
inner join Kira_Bilgisi on Araba_Bilgisi.Kira_ID = Kira_Bilgisi.Kira_ID
end

exec arabakira


/*-----------------------------------------*/


create procedure arababilgi
(
@Arac_Plaka varchar(20),
@Arac_Rengi varchar(20),
@Kira_ID int,
@Arac_Modeli varchar(11)
)
as
insert into Araba_Bilgisi values(@Arac_Plaka,@Arac_Rengi,@Kira_ID,@Arac_Modeli)


exec arababilgi '29 DS 7227','Turkuaz',N'2','Jeep'
exec arababilgi '27 CBU 7382','Mor',N'7','Porsche'
select * from Araba_Bilgisi



create procedure gelirbilgi
(
@Arac_ID int,
@Kira_Ucreti varchar(20),
@Musteri_ID int
)
as
insert into Gelir values (@Arac_ID,@Kira_Ucreti,@Musteri_ID)

exec gelirbilgi '13','58880','15'
select * from Gelir






create procedure kirabilgisi
(
@Teslim_Tarihi varchar(20),
@Musteri_ID int
)
as
insert into Kira_Bilgisi values (@Teslim_Tarihi,@Musteri_ID)


exec kirabilgisi '01.12.2023',N'6'

select * from Kira_Bilgisi



create procedure musteribilgi
(
@Musteri_Adi varchar(20),
@Musteri_Soyadi varchar(20),
@Musteri_Telefon varchar(20)
)
as
insert into Musteri_Bilgisi values (@Musteri_Adi,@Musteri_Soyadi,@Musteri_Telefon)


exec musteribilgi 'Elon','Musk','05489632514'

select * from Musteri_Bilgisi

/*-----------------------------------------*/



CREATE INDEX MTelefon
ON Musteri_Bilgisi (Musteri_Telefon);

CREATE INDEX MAdSoyad
ON Musteri_Bilgisi (Musteri_Adi, Musteri_Soyadi);

CREATE NONCLUSTERED INDEX Kiralar 
ON Gelir (Kira_Ucreti ASC)






ALTER INDEX ALL ON Musteri_Bilgisi REBUILD;
GO

ALTER INDEX MAdSoyad ON Musteri_Bilgisi REBUILD;
GO

ALTER INDEX Kiralar ON Gelir REORGANIZE;
GO

ALTER INDEX ALL ON Gelir REORGANIZE;
GO



SELECT * FROM Araba_Bilgisi
SELECT * FROM Gelir
SELECT * FROM Kira_Bilgisi
SELECT * FROM Musteri_Bilgisi