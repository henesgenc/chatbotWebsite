CREATE DATABASE shopping;
CREATE TABLE users(
	ID int not null auto_increment primary key,
    username varchar(20),
	user_password varchar(59),
    user_name varchar(50),
    user_surname varchar(50),
	user_birthdate date
);
CREATE TABLE product(
	P_ID int not null auto_increment primary key,
    P_Image text,
    Product_Name varchar(100),
    Product_Type varchar(50),
    Price float,
    Detail text
);
insert into users value(1,"caneregin","2367854","Caner","Egin",'1996-04-08');
insert into users value(2,"hasanenes","2367854","Hasan","Enes",'1996-01-03');
insert into users value(3,"furkanagca","2367854","Furkan","Agca",'1997-02-04');
insert into users value(4,"caneregin1","2367854","Caner","Egin",'1996-04-02');

insert into users value(1,"caneregin","2367854","Caner","Egin",'1996-04-08');


insert into product values(null,"p1","APPLE IPHONE XS MAX 512GB","Phones",13999,"Super AMOLED capacitive touchscreen, 16M colors,1242 x 2688 pixels, 19.5:9 ratio (~458 ppi density),Apple A12 Bionic (7 nm),Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest)");		
insert into product values(null,"p2","APPLE IPHONE XS 64GB","Phones",9899,"Super AMOLED capacitive touchscreen, 16M colors,5.8 inches, 84.4 cm2 (~82.9% screen-to-body ratio),1125 x 2436 pixels,Apple A12 Bionic,12 MP, f/1.8, 26mm (wide), 1/2.55, 1.4um, OIS, PDAF
12 MP, f/2.4, 52mm (telephoto), 1.0µm, OIS, PDAF, 2x optical zoom");
insert into product values(null,"p3","APPLE IPHONE XR 64GB","Phones",7399,"IPS LCD capacitive touchscreen, 16M colors,6.1 inches, 90.3 cm2 (~79.0% screen-to-body ratio),828 x 1792 pixels,120 Hz touch-sensing,Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest),64/128/256 GB, 3 GB RAM");
insert into product values(null,"p4","SAMSUNG GALAXY A9 128GB","Phones",4099,"Super AMOLED capacitive touchscreen, 16M colors,6.3 inches, 100.7 cm2 (~80.5% screen-to-body ratio),1080 x 2220 pixels, 18.5:9 ratio (~392 ppi density),Qualcomm SDM660 Snapdragon 660 (14 nm),Octa-core (4x2.2 GHz Kryo 260 & 4x1.8 GHz Kryo 260)");
insert into product values(null,"p5","VESTEL VENUS Z20 64GB","Phones",1999,"Qualcomm Snapdragon 630 chipset, 4 GB of RAM and 64 GB of internal storage,Android OS v8.0 (Oreo),5.65 inches IPS display with 1080 x 2160 px resolution. ");
insert into product values(null,"p6","HUAWEI MATE 20 PRO 128GB","Phones",7999,"AMOLED capacitive touchscreen, 16M colors,6.39 inches, 100.2 cm2,1440 x 3120 pixels, 19.5:9 ratio,40 MP, f/1.8, 27mm, Fast battery charging 40W");
insert into product values(null,"p7","LG K11 PRIME 16GB","Phones",1499,"IPS LCD capacitive touchscreen, 16M colors,5.3 inches, 77.4 cm2 (~69.2% screen-to-body ratio),720 x 1280 pixels, 16:9 ratio (~277 ppi density),	Mediatek MT6750 (28 nm),Octa-core (4x1.5 GHz Cortex-A53 & 4x1.0 GHz Cortex-A53)");
insert into product values(null,"p8","SAMSUNG GALAXY A7 2018 64GB","Phones",2499,"6.0 inches, 91.4 cm2 (~74.4% screen-to-body ratio),1080 x 2220 pixels, 18.5:9 ratio (~411 ppi density),Exynos 7885 Octa (14 nm),Octa-core (2x2.2 GHz Cortex-A73 & 6x1.6 GHz Cortex-A53),	Mali-G71,Fingerprint (side-mounted), accelerometer, gyro, proximity, compass");
insert into product values(null,"p9","VESTEL VENUS E2 PLUS DUAL 16GB","Phones",699,"Android 6.0.1 Marshmallow,Dual SIM,5.0 Inches 720 x 1280 Pixels,Quad Core 1.3GHZ,Qualcomm Snapdragon 212,Quad Core1.3GHzQualcomm MSM8909, 32 Bit");
insert into product values(null,"p10","REEDER F1 32MB BLACK","Phones",499,"Optimized to provide maximum performance with 700 mAh battery capacity. The phone has a charging life of up to 2 days in continuous use and the standby time of the phone is extended to 1 week. With this state-of-the-art keypad phone that offers a solution to the charging problem, things won't go smoothly.");
insert into product values(null,"p11","SAMSUNG GALAXY J6 PLUS 32GB","Phones",1549,"IPS LCD capacitive touchscreen, 16M colors,6.0 inches, 91.4 cm2 (~73.6% screen-to-body ratio),Qualcomm MSM8917 Snapdragon 425 (28 nm),Quad-core 1.4 GHz Cortex-A53,Adreno 308");
insert into product values(null,"p12","SAMSUNG GALAXY J4 PLUS 16GB","Phones",1249,"Qualcomm MSM8917 Snapdragon 425 (28 nm),	Quad-core 1.4 GHz Cortex-A53,Adreno 308,32 GB, 2/3 RAM or 16 GB, 2 GB RAM,Fingerprint (side-mounted), accelerometer, gyro, proximity, compass - North America");
insert into product values(null,"p13","ASUS ZENFONE MAX PRO 64GB","Phones",1899,"IPS LCD capacitive touchscreen, 16M colors,	6.26 inches, 97.8 cm2 (~82.0% screen-to-body ratio),1080 x 2280 pixels, 19:9 ratio (~403 ppi density),Qualcomm SDM660 Snapdragon 660 (14 nm),Octa-core (4x2.2 GHz Kryo 260 & 4x1.8 GHz Kryo 260)");
insert into product values(null,"p14","HUAWEI MATE 20 LITE 64GB","Phones",2899,"LTPS IPS LCD capacitive touchscreen, 16M colors,6.3 inches, 97.4 cm2 (~81.7% screen-to-body ratio),1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density),Hisilicon Kirin 710 (12 nm),	Octa-core (4x2.2 GHz Cortex-A73 & 4x1.7 GHz Cortex-A53)");
insert into product values(null,"p15","REEDER P13 32GB","Phones",1699,"Designed to be your best team-mate with just 7mm thin ergonomics.,With Gorilla Glass technology, no matter how much you drop it, it won't break.");
insert into product values(null,"p16","NOKIA 5 PRO 32GB","Phones",1499,"MediaTek Helio P18,	Octa-core (4x2.0 GHz Cortex-A53 & 4x1.2 GHz Cortex-A53),Mali-T860MP2,IPS LCD capacitive touchscreen, 16M colors,	5.5 inches, 78.1 cm2 (~73.1% screen-to-body ratio)");
insert into product values(null,"p17","GENERAL MOBILE GM9 PRO SINGLE SIM","Phones",2199,"The best video and photo shooting experience with bigger pixels, bigger sensor, F1.8 aperture and image stabilization (EIS).,The perfect design with a sleek texture, metal frame and ergonomic lines.");
insert into product values(null,"p18","SAMSUNG GALAXY J2 CORE 8GB","Phones",849,"Capacitive touchscreen, 16M colors,5.0 inches, 68.9 cm2 (~66.7% screen-to-body ratio),540 x 960 pixels, 16:9 ratio (~220 ppi density),Exynos 7570 Quad (14 nm),Quad-core 1.4 GHz Cortex-A53,	Mali-T720");
insert into product values(null,"p19","LG Q STYLUS PLUS 64GB","Phones",2299,"IPS LCD capacitive touchscreen, 16M colors,6.2 inches, 99.7 cm2 (~80.2% screen-to-body ratio),1080 x 2160 pixels, 18:9 ratio (~389 ppi density),Mediatek MT6750 - Q Stylus/Q Stylus α,Octa-core (4x1.5 GHz Cortex-A53 & 4x1.0 GHz Cortex-A53) - Q Stylus/Q Stylus αOcta-core 1.8 GHz");
insert into product values(null,"p20","SAMSUNG GALAXY NOTE 9 128GB","Phones",6299,"Super AMOLED capacitive touchscreen, 16M colors,6.4 inches, 103.2 cm2 (~83.4% screen-to-body ratio),1440 x 2960 pixels, 18.5:9 ratio (~516 ppi density),Exynos 9810 Octa (10 nm) - EMEAQualcomm SDM845 Snapdragon 845 (10 nm)");
insert into product values(null,"p21","REEDER P12S 64GB","Phones",1799,"P12S, which has no problems in download speed with 4.5G compatibility, P12S with MT6557 processor reaching 2.00 GHz provides comfort to its users with 6 GB RAM performance.");
insert into product values(null,"p22","SAMSUNG GALAXY J8 32GB","Phones",1999,"Super AMOLED capacitive touchscreen, 16M colors,6.0 inches, 91.4 cm2 (~75.8% screen-to-body ratio),	720 x 1480 pixels, 18.5:9 ratio (~274 ppi density),Qualcomm SDM450 Snapdragon 450 (14 nm),	Octa-core 1.6 GHz Cortex-A53");
insert into product values(null,"p23","VESTEL VENUS V6 32GB","Phones",1399,"The V6 is powered by the Snapdraon 450 with an 8-core ARM Cortex A53 chipset, as with many input and mid-range smartphones. The frequency of the cores is 1.8 GHz. On the graphics unit side, there is Adreno 506 at 650 MHz.");
insert into product values(null,"p24","NOKIA 8110 4GB","Phones",899,"TFT,2.4 inches, 17.8 cm2 (~27.1% screen-to-body ratio,240 x 320 pixels, 4:3 ratio (~167 ppi density),	Qualcomm MSM8905 Snapdragon 205 (28 nm),Dual-core (2x1.1 GHz Cortex-A7)");
insert into product values(null,"p25","LG Q7 PLUS 64GB","Phones",2299,"IPS LCD capacitive touchscreen, 16M colors,5.5 inches, 77.0 cm2,Mediatek MT6750S (28 nm),Octa-core (4x1.5 GHz Cortex-A53 & 4x1.0 GHz Cortex-A53)	");
insert into product values(null,"p26","LG G7 THINQ 64GB","Phones",4499,"IPS LCD capacitive touchscreen, 16M colors,6.1 inches, 91.0 cm2,1440 x 3120 pixels, 19.5:9 ratio (~564 ppi density),Qualcomm SDM845 Snapdragon 845 (10 nm),Octa-core (4x2.8 GHz Kryo 385 Gold & 4x1.7 GHz Kryo 385 Silver)");
insert into product values(null,"p27","ASUS ZENFONE 5 Z 64GB","Phones",3999,"IPS LCD capacitive touchscreen, 16M colors,	6.2 inches, 96.9 cm2 (~83.6% screen-to-body ratio),	1080 x 2246 pixels, 18.7:9 ratio (~402 ppi density)Qualcomm SDM845 Snapdragon 845 (10 nm)");
insert into product values(null,"p28","LG K9 16GB","Phones",1199,"IPS LCD capacitive touchscreen, 16M colors,5.7 inches, 83.8 cm2,720 x 1440 pixels,Mediatek MT6762 Helio P22 (12 nm),PowerVR GE8320");
insert into product values(null,"p29","SAMSUNG GALAXY S9 PLUS G965 128GB","Phones",5499,"Super AMOLED capacitive touchscreen, 16M colors,6.2 inches, 98.3 cm2,1440 x 2960 pixels, 18.5:9 ratio,Exynos 9810 Octa (10 nm) - EMEA");
insert into product values(null,"p30","ASUS ZENFONE 5 64GB","Phones",2399,"IPS LCD capacitive touchscreen, 16M colors,6.2 inches, 96.9 cm2,1080 x 2246 pixels, 18.7:9 ratio,Qualcomm SDM636 Snapdragon 636 (14 nm),Octa-core Kryo 260,Adreno 509");
insert into product values(null,"p31","HUAWEI Y6 2018 16GB","Phones",1199,"S-IPS LCD capacitive touchscreen, 16M colors,5.7 inches, 83.8 cm2,720 x 1440 pixels,Qualcomm MSM8917 Snapdragon 425 (28 nm),microSD, up to 256 GB");
insert into product values(null,"p32","HUAWEI Y7 2018 16GB","Phones",1299,"IPS LCD capacitive touchscreen, 16M colors,5.99 inches, 92.6 cm2 ,720 x 1440 pixels, 18:9 ratio,Qualcomm MSM8937 Snapdragon 430 (28 nm)");
insert into product values(null,"p33","ASUS ZENFONE MAX PLUS 32GB","Phones",1599,"IPS LCD capacitive touchscreen, 16M colors,6.26 inches, 97.8 cm2,720 x 1520 pixels, 19:9 ratio,Qualcomm SDM632 Snapdragon 632 (14 nm),13 MP, f/1.8");
insert into product values(null,"p34","SAMSUNG GALAXY A6 PLUS 64GB","Phones",2469,"Super AMOLED capacitive touchscreen, 16M colors,6.0 inches, 91.4 cm2 (~75.3% screen-to-body ratio),Qualcomm SDM450 Snapdragon 450 (14 nm),	Octa-core 1.8 GHz Cortex-A53");
insert into product values(null,"p35","SAMSUNG GALAXY J7 PRIME 2 32GB","Phones",1449,"PLS TFT capacitive touchscreen, 16M colors,5.5 inches, 83.4 cm2,1080 x 1920 pixels, 16:9 ratio,Exynos 7870 Octa (14 nm),Octa-core 1.6 GHz Cortex-A53");
insert into product values(null,"p36","LG V30 PLUS 128GB","Phones",13999,"cok guzel");
insert into product values(null,"p37","HUAWEI P20 PRO 128GB","Phones",5699,"cok guzel");
insert into product values(null,"p38","NOKIA 2 SMARTPHONE","Phones",949,"cok guzel");
insert into product values(null,"p39","GENERAL MOBILE GM8 GO","Phones",899,"cok guzel");
insert into product values(null,"p40","APPLE IPHONE 8 64GB","Phones",4999,"cok guzel");
insert into product values(null,"p41","LG Q6 32GB","Phones",1299,"cok guzel");
insert into product values(null,"p42","HUAWEI P20 LITE 64GB","Phones",2499,"cok guzel");
insert into product values(null,"p43","GENERAL MOBILE GM8 32GB","Phones",1299,"cok guzel");
insert into product values(null,"p44","SAMSUNG GALAXY S9 G960 64GB","Phones",4299,"cok guzel");
insert into product values(null,"p45","VESTEL VENUS E3 16GB","Phones",674,"cok guzel");
insert into product values(null,"p46","NOKIA 3310 DUAL SIM","Phones",629,"cok guzel");
insert into product values(null,"p47","HUAWEI P SMART 32GB","Phones",1599,"cok guzel");
insert into product values(null,"p48","SAMSUNG GALAXY A8 PLUS 64GB","Phones",3199,"cok guzel");
insert into product values(null,"p49","SAMSUNG GALAXY A8 64GB","Phones",2299,"cok guzel");
insert into product values(null,"p50","APPLE IPHONE X 64GB","Phones",8299,"cok guzel");
insert into product values(null,"p51","HUAWEI MATE 10 LITE 64GB","Phones",1999,"cok guzel");
insert into product values(null,"p52","REEDER P12 CURVE","Phones",1498,"cok guzel");
insert into product values(null,"p53","NOKIA 8 64GB","Phones",3299,"cok guzel");
insert into product values(null,"p54","APPLE IPHONE 7 32GB","Phones",3999,"cok guzel");
insert into product values(null,"p55","APPLE IPHONE 7 PLUS 32GB","Phones",4999,"cok guzel");
insert into product values(null,"p56","APPLE IPHONE 8 PLUS 64GB","Phones",6699,"cok guzel");
insert into product values(null,"p57","NOKIA 3 16GB","Phones",1399,"cok guzel");
insert into product values(null,"p58","NOKIA 6 SMARTPHONE","Phones",1899,"cok guzel");
insert into product values(null,"p59","NOKIA 5 SMARTPHONE","Phones",1399,"cok guzel");
insert into product values(null,"p60","SAMSUNG GALAXY S8 G950 64GB","Phones",3599,"cok guzel");
insert into product values(null,"p61","SAMSUNG GALAXY S8 PLUS G955 64GB","Phones",3999,"cok guzel");
insert into product values(null,"p62","APPLE IPHONE 6 32GB","Phones",2399,"cok guzel");
insert into product values(null,"p63","APPLE IPHONE 6S 32GB","Phones",13999,"cok guzel");
