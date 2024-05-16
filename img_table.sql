CREATE TABLE [dbo].[img](
	[id] [int] NOT NULL IDENTITY,
	[item_name] [varchar](50) NOT NULL,
	[img] [varchar](max) NOT NULL,
 CONSTRAINT [PK_img] PRIMARY KEY CLUSTERED 
(
	[item_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

INSERT INTO img Values('Maggi Pattaya','Images\maggi goreng pattaya.jpg');
INSERT INTO img Values('Nasi Goreng','Images\Nasi_Goreng_Kampung.jpg');
INSERT INTO img Values('Bee Hoon','Images\bee hoon.jpg');
INSERT INTO img Values('Quey Teow','Images\char-koay-teow-thumb.jpg');
INSERT INTO img Values('Chicken Rice','Images\chicken rice.jpg');
INSERT INTO img Values('Thosai','Images\thosia.jpg');
INSERT INTO img Values('Roti Canai','Images\roti kosong.jpg');
INSERT INTO img Values('Roti Telur','Images\roti telur.jpg');
INSERT INTO img Values('Roti Banjir','Images\roti banjir.jpgp');
INSERT INTO img Values('Poori','Images\poori.jpg');
INSERT INTO img Values('Idli','Images\idli.jpg');
INSERT INTO img Values('Chappati','Images\chappati.jpg');
INSERT INTO img Values('Burger Ayam','Images\chicken burger.jpg');
INSERT INTO img Values('Ayam Double','Images\chicken burger double.jpeg');
INSERT INTO img Values('Chicken Wrap','Images\chicken wrap.jpg');
INSERT INTO img Values('French Fries','Images\french fries.jpg');
INSERT INTO img Values('Nuggets 4Pcs','Images\nuggets.jpg');
INSERT INTO img Values('Onion Rings','Images\onion rings.jpg');
INSERT INTO img Values('Teh O Ice','Images\teh o ice.jpg');
INSERT INTO img Values('Teh O Limau','Images\teh o ice limau.jpg');
INSERT INTO img Values('Teh O','Images\teh-o.jpg');
INSERT INTO img Values('Teh Tarik ','Images\tehtarik.jpg');
INSERT INTO img Values('Milo Tarik','Images\milo tarik.jpg');
INSERT INTO img Values('Milo Ice ','Images\milo.jpg');
INSERT INTO img Values('Limau Ice','Images\limau ice.jpg');
INSERT INTO img Values('Coke','Images\coke.jpg');
INSERT INTO img Values('Pepsi','Images\pepsi.png');
INSERT INTO img Values('7 Up ','Images\7up.jpg');

DROP Table img

SELECT * FROM img
DELETE from img