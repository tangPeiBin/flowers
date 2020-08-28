SET NAMES UTF8;
DROP DATABASE IF EXISTS flower;
CREATE DATABASE flower CHARSET=UTF8;
USE flower;
CREATE TABLE user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(18),
	upwd VARCHAR(18),
	phone CHAR(11)
);
CREATE TABLE family(
	id INT PRIMARY KEY,
	familyName VARCHAR(16)
);
CREATE TABLE cart(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	image VARCHAR(64),
	title VARCHAR(32),
	price_online DECIMAL(7,2),
	count SMALLINT
);
CREATE TABLE flowers(
	fid INT PRIMARY KEY AUTO_INCREMENT,
	pid VARCHAR(16),
	title VARCHAR(32),
	createby VARCHAR(64),
	packing VARCHAR(64),
	desc_msg VARCHAR(256),
	price_offline DECIMAL(7,2),
	price_online DECIMAL(7,2),
	image VARCHAR(64),
	images VARCHAR(512),
	isOnsale BOOL,
	saleCount INT,
	familyId INT,
	foreign key(familyId) references family(id)
);
INSERT INTO user VALUES(NULL,'tangtang','123456','17345861905');
INSERT INTO family VALUES
(1,'爱情鲜花'),
(2,'友情推荐'),
(3,'生日推荐'),
(4,'长辈推荐'),
(5,'独创设计'),
(6,'设计师臻选'),
(7,'商务开业'),
(8,'创意鲜花');
INSERT INTO flowers VALUES
(NULL,'ZXHD0383','亲密爱人-33枝红色玫瑰','红玫瑰33枝、白色洋桔梗7枝、粉色绣球1枝、白色勿忘我5枝，尤加利10枝','红/金色鎏金纸7张、白色雪梨纸2张、酒红色罗纹烫金丝带2米','33朵玫瑰，谐音“三生三”，也就是三生三世的意思，三生三世的爱，往往只会送给最深爱的灵魂伴侣。纵使岁月匆匆，爱你的心依然热烈，想许你一生，伴你三世',369.00,229.00,'1b3dc3830c1ae080e0f7b7966d12bd81.jpg','a0133c2b611099cab192e781c6d57760.jpg|6cf11b77131b5d125bb28c7a42856fb8.jpg|1b3dc3830c1ae080e0f7b7966d12bd81.jpg|7b36310956b7031ed79f97f13c5bdae6.jpg|9cf28aade96c0f0fb4547811d83e3741.jpg|ee3e42682d835a0de236af1fcc56b9c9.jpg|37c7b4c832f83893d599545af22ea8f0.jpg|98c8d9cd7ff27ec59620c65febc389cb.jpg|49825f7ae699625c8855f36f72128811.jpg',1,21418,1),
(NULL,'ZXHD0380','一心一意-11枝戴安娜粉玫瑰','11枝戴安娜粉玫瑰、浅紫勿忘我3枝、尤加利10枝','嫣粉/玫粉色欧雅纸5张、白色雪梨纸2张、浅粉色罗纹玫瑰金丝带2米','我还是要给你最好的',259.00,129.00,'6460037d2be21839fd5c84515dcac72b.jpg','0905b874c2ec66dee3e09efe1e412064.jpg|89e0495525c3d598e096c60e6e9bbcc8.jpg|914ebc01e24f7d7f2b23f8d37d019fbf.jpg|0d1d1cf9f04a84760627f10dff9427c9.jpg|7dd6a64eb173fc38c68464d5beb68dbd.jpg|1ed84e193267277997fd67b8b86c6f8c.jpg|263b39663a34566a2b0a53184eff2162.jpg|e0cfb1fefae3d5532f31fd47a89c738d.jpg',1,51057,1),
(NULL,'ZXHD0381','你是唯一-11枝红玫瑰','红玫瑰11枝、白色满天星3枝、尤加利10枝','红/金色鎏金纸5张、白色雪梨纸2张、酒红色罗纹烫金丝带2米','人间蹉跎，你是唯一值得！',259.00,129.00,'95d050e0d5cca02b9e70f99826c01e45.jpg','4064495d704d4d2f4c7089805674d7d6.jpg|2027072cdf20f0090a0176bc08a5aa6f.jpg|42112f12d07b4bb000aa95637df65d03.jpg|7fa1288821c2fe4fd3c77ecad3bf7b29.jpg|12a63101f9f1fc019a91dfaf5e12482d.jpg|08b069be9e9a009a0ac879e32d3be5be.jpg|67327321a2274d15939a86c6244f3b7e.jpg|f90523973ad5b88569a1ef3318d1c639.jpg',1,12470,1),
(NULL,'ZXHD0382','一见如初-33枝粉玫瑰','戴安娜粉玫瑰33枝、白色洋桔梗5枝、粉色洋桔梗2枝、粉紫小菊3枝、浅蓝绣球1枝，尤加利10枝','嫣粉/玫粉色欧雅纸7张、白色雪梨纸2张、浅粉色罗纹玫瑰金丝带2米','以浪漫粉玫瑰及辅之以白色桔梗，搭配清新的浅蓝绣球为设计主题，打造全新韩式系列！宛如初见时的你，甜美、明艳不可方物！',369.00,229.00,'44ac6450cd45fbc356b30dd95f92b68b.jpg','fcbff7f65d372bfecac097a48099ece1.jpg|e8bd3678e711a40c450c3b478e47307e.jpg|767c998b4b44b5e93561dd22cfb3629c.jpg|ccacb359fd8235d16848fe0b78535963.jpg|c168f0633ac2652df4b32d9909215e02.jpg|d7a536b763c251add692781a11da381a.jpg|e39202481952465b504e025625cee050.jpg|053b2bc30a185eb5e77add833ce5f28b.jpg',1,12462,1),
(NULL,'ZXHD0378','青春有你-苏醒玫瑰16枝、白色洋桔梗5枝、浅紫色紫罗兰5枝','苏醒玫瑰16枝、白色洋桔梗5枝、尤加利10枝、浅紫色紫罗兰5枝、浅蓝绣球1枝、小菊4枝','浅紫/香芋紫人造纸7张、白色雪梨纸2张、灰蓝色罗纹烫金丝带2米','青春有你，才温柔又闪光',429.00,329.00,'9cabbbad0d6df6709ba27ffe3249cfd2.jpg','a8622880c89e8588e2791fc1e9ef6272.jpg|e19664209a735d44f1463181c51f4df2.jpg|6a12fee619bfcc80ae33c39fa47563c9.jpg|cf8e03dc56ce5ca0c9520b90274d9679.jpg|925e9fea77f2ac6b91ea6aabfcc8ef9e.jpg|bfe9ce6125d110264f9e1fab948de450.jpg|97e1bfdbfdbb2aeb755b1822091f8f16.jpg|9b08bf1715c6e490923c47e380d9504b.jpg|97e1bfdbfdbb2aeb755b1822091f8f16.jpg',1,16655,8),
(NULL,'ZXHD0377','牵挂你-红色康乃馨13枝、粉佳人玫瑰5枝、粉色洋桔梗5枝','红色康乃馨13枝，粉佳人玫瑰5枝、粉色洋桔梗5枝、粉色紫罗兰3枝、红豆5枝，尤加利10枝','灰色纸8张、白色雪梨纸2大张、酒红色罗纹烫金丝带1.5米','你是我最柔的牵挂，我是你最硬的铠甲。',359.00,259.00,'11ff3f017f9a3cafa4f8d697c9805fad.jpg','c814b55f5bd71edfd777d6ff096281b8.jpg|f00720b185a4628dd75adcd37c7b4c1e.jpg|1f8ac484ca2bb95edcb1ef77a4165351.jpg|da60ec73ac589719c32c41b0a7fb87be.jpg|d42599c386fbfce839c0dccabedce0a2.jpg|d8aeee86df8c4395714afced0c6dd6b6.jpg|874da48db607e64201ec2fa84c0e1061.jpg|3ca9ec2b2dcb7b4881babf6f903019d7.jpg',1,13266,8),
(NULL,'ZXHD0306','恋恋风情-11朵香槟玫瑰+白百合2枝','11朵香槟玫瑰，白百合2枝，栀子叶0.5扎','深浅绿双面人造纸2张，米白色缎带1.5米','喜欢像是一阵风，而爱你是细水长流',259.00,139.00,'c00f949879f9ccfdb0b8319ab0efdb83.jpg','a45a296a944b211def4056f6b4821e0a.jpg|51c5d4a9d2b9b4ace77cdec81c4c77a4.jpg|716b81214ae3a62c8fe1a8beed47a894.jpg|d41b2ebd439ad291fb2e6d66c575c5c0.jpg|2568ce4bb695c7687f18036d82fbff8f.jpg|fdf289d6d808b9bcda00bcc0e5c05316.jpg|70f7d1f7a7958eb9c720de0891524a09.jpg',1,86941,2),
(NULL,'ZXHD0307','柔情蜜意-11朵戴安娜粉玫瑰+2枝白百合','11朵戴安娜粉玫瑰，白百合2枝，白色相思梅5枝，栀子叶0.5扎','浅紫香芋紫人造纸2张，米白色缎带1.5米','用一切美好的词语来形容你都不为过，你值得被世界温柔以待。',239.00,139.00,'1e2faf1f0a84a569cca18006041bea17.jpg','4885fac1123d9bf1872acde34a91dd41.jpg|dcbafe0b43b851643483dd89581fab43.jpg|2db61535185f7448012ec376021fc1dd.jpg|0c6b6cb63ad315e21897c503040fa782.jpg|9012cf25bab4e8261cb0ce989c6828a7.jpg|4216d8680201d86e509e4752e70db310.jpg|e08adbc86d65292afe1d36e0e1adc6e7.jpg|b0fefdb8e33ee0558c0ec18ef6e9ba4b.jpg|22356c7c8019dcb73357d4e7b1c6edc5.jpg|9ee9d54431504ce568b6785cff3da136.jpg|6f08616160ceeb0ee3e4b99baa4cc46e.jpg|14b31e4a19cb7c89ce97a1baf0165a48.jpg|571624b533631d66a72b817a57de24f1.jpg',1,65502,2),
(NULL,'ZXHD0308','浪漫香气-11朵紫玫瑰+2枝粉百合','11枝冷美人紫玫瑰，粉百合2枝，白色相思梅5枝，栀子叶0.5扎','浅紫香芋紫人造纸2张，米白色缎带1.5米','你是我所有浪漫的源头，没有你，我便不再浪漫。',269.00,199.00,'8c47f427d31f4d3e3d8e12ac567fdd85.jpg','39a7cb7f46f628d9465b1547ac62e9a3.jpg|3ef64d5dd1aa20b929e29edb0bc0f722.jpg|ac95283b923d8151ec20ee4931d5a087.jpg|831ab4c113572f2faba1339b5785e333.jpg|7bf2b795f649b4281a2e3315563ec850.jpg|389dbec335eb631482969dc79c9afc88.jpg|1493eae767e9d06a4a1402ceeef0ff87.jpg|8ad9a83dc58510148a01a642e47404af.jpg|2ba3153547d7c6226cde80f5fef11af0.jpg|eece9af6ac0365703281ee062b4e14cc.jpg|054c3d374457ba252955777e1992028a.jpg|0c9e1e285c4a08e00099d60dcc3a2d10.jpg|53136819fef737483d5c65d2738fcb88.jpg',1,39871,2),
(NULL,'ZXHD0069','忘情-19朵香槟玫瑰（扇形包装）','香槟玫瑰','牛皮纸扇形包装','每每相对，有些话，怯与说，我喜欢你!有些事、怯于做、比如我想牵你的手',259.00,159.00,'47be99147e693d2d41600942fe28ae02.jpg','4393f49d27e044e19cbfc79b51335d1c.jpg|09e10de85fe377123bf14aeba9e993c6.jpg',1,51476,2),
(NULL,'ZXHD0017','致爱-11朵康乃馨+11朵玫瑰+2枝多头百合 花束','11朵康乃馨11朵玫瑰','白绿色格子卡纸包装','你从远方而来，带着北冰洋的冷艳与骄傲，所有的白在你面前变成黑墨水而自惭形秽，所有的鸟兽因为叫不出你的名字而绝望万分。',289.00,169.00,'bfdee2f24a3ec89ed28da0d6e19efcb2.jpg','ce9c8edfa7bd3408aaa01ad7c57446d9.jpg|ede8e10ed88a09d549b6a3df9f03260e.jpg|d23ac3c4a4a3304120e708598d7c5157.jpg',0,54716,3),
(NULL,'ZXHD0113','邂逅浪漫-11朵粉玫瑰 花束','粉玫瑰','牛皮纸包装','感动、爱的宣言、铭记于心 、初恋，喜欢你那灿烂的笑容；',199.00,129.00,'37896d66a36bf059a27e425f8b5d545f.jpg','5f0d8d3e5ab39ddea85e12381d32234a.jpg|02f1b0913e9ca5357dbfc8ca8b4f5e22.jpg',0,18733,3),
(NULL,'ZXHD0071','好心情-19朵红玫瑰+2枝多头粉百合 花束','红玫瑰 百合','紫色包装纸白纱圆形精美包装','以前，我不知道这个世界上还有你。后来，我在这个世界上寻找你。现在，我决定一辈子只爱你。',289.00,169.00,'cf7bfacbb273643f44fc62bf736ec41d.jpg','dba791755e4a0657b0f0823c7223ccb3.jpg|b7244929d71768f18f5a591c22dd0b27.jpg|43106c5dd15f91b4e607cb7501c3639d.jpg',0,51241,3),
(NULL,'ZXHD0082','专情-11朵紫色康乃馨+桔梗','紫色康乃馨','搭配相思梅','在这个专属你的日子里，让我送上我最真挚的祝福，愿你生活如意，工作顺利，家庭和睦，爱情甜蜜，身体健康，笑口常开，生日快乐，甜甜蜜蜜。',239.00,139.00,'2dc515d8aa8a3736550c8897920b9f51.jpg','58ded9d64c95e3e7cac0b5eb53bca411.jpg|d1550f72b7c85e2b141debf48130d61f.jpg',0,51243,3),
(NULL,'ZXHD0358','优雅馨情-66朵紫色康乃馨+粉色多头康乃馨15枝','紫色康乃馨66枝，粉色多头康乃馨15枝，栀子叶2扎','粉色opp雾面纸3张、浅紫香芋紫人造纸2张、白咖细条纹罗文带1.5米','“岁月极美，在于它必然的流逝”，唯鲜花带来的美好，家人的爱与温暖永存！',399.00,299.00,'e1bf55f3b501079c65cced86caf4eda6.jpg','708030554625f5e8573f4c38a03cc191.jpg|1775323456aa72f4a17efbeb85263f83.jpg|0a0aaa1bf7d90cf39dea533dc51509cd.jpg|32e0242c630e0e62c98996390643be1c.jpg|905afcec23968d9e8a0b40f2cf66a153.jpg|00ae031b7c1573dcd5f58724308a9ba9.jpg|5114b13dd4bb0662acffc9c86838f9d2.jpg|116d98ff90430a6eefea1003b0b02a64.jpg|251b4f11254f780bc31171aab5f2b59d.jpg',1,61005,4),
(NULL,'ZXHD0357','暖暖满怀-99朵粉色康乃馨、粉色多头康乃馨间插','99朵粉色康乃馨、粉色多头康乃馨1扎、栀子叶1扎','白色opp雾面纸3张、粉色opp雾面纸3张、白蓝细条纹罗文带1.5米','99朵粉色康乃馨将最真挚的花语祝福承载，祝妈妈永远年轻美丽！',699.00,399.00,'b7049c7fbf4e88d1f84cc93d2a80d324.jpg','5e7d0c6eecab80ae4a2391faf35ed5c2.jpg|fd517c058378901a6d1aae1d8f1fd831.jpg|3564018d5adaba0dd0a0107a7b1c88f1.jpg|fa605ae49608820eea0d7e633d7eed51.jpg|b7049c7fbf4e88d1f84cc93d2a80d324.jpg|8d12b10f8e12debc415c5194c9f69d3b.jpg|7982cd4f68a3248d95112f174c26f6fd.jpg|6b4a37c6d3155e6eb34418b4c778064f.jpg|7aa728345a089e17ed0e3c7609abb296.jpg',1,61103,4),
(NULL,'ZXHD0319','心的港湾-19朵粉色康乃馨','19支粉色康乃馨，搭配适量白色洋桔梗、黄莺、栀子叶','紫色+白色硬纸包装，精美香槟色丝带束扎','母亲永远是我心灵的港湾，祝亲爱的妈妈健康长寿！永远年轻！天天快乐！',269.00,159.00,'3b35c26a56d6bd04f9b235e36dc13157.jpg','0ea174a59d3819298661341253c83561.jpg|6a7d4ce3c53777481d291d7ca8f9af12.jpg',1,16567,4),
(NULL,'ZXHD0036','恩情-19枝紫色康乃馨礼盒','19枝紫色康乃馨','礼盒包装','我用回忆温暖了想你的每一刻',269.00,169.00,'f45a1575cb382b8589bb10c64268ca4c.jpg','96217c7ada3912d5d00fcfc741d393f3.jpg|6371d742b228def44b0752cc2a30b5ab.jpg|a3dbaea6fa5c99cd1021e3846485013e.jpg',1,61402,4),
(NULL,'ZXHD0370','初心不负-卡罗拉玫瑰11枝、白底粉边洋桔梗5枝、尤加利10枝','卡罗拉玫瑰11枝、白底粉边洋桔梗5枝、尤加利10枝、4枝红豆','红/金色鎏金纸5张、透明雾面纸3张、酒红色罗纹烫金丝带2米','以热烈主题的红玫瑰及红色包装，搭配象征白色雪花的桔梗为设计主题，打造全新双节（圣诞/新年）韩式系列。将这一簇美景包裹在一片雪白中，一条满载圣诞和元旦的丝带扎紧了年末的惊喜，只为将全世界的风景奉献于你怀里',299.00,199.00,'764cc73fb91b2cdaa22ba6ff89ea5f2c.jpg','82b27488250bde19b49b68346c5c9cf3.jpg|3e25161471f4af620227df38c3d8e63d.jpg|5af787df4d3c8bb8ce2d4515a0da3143.jpg|7b02d1db619f803a11bfc8fc2a5821e3.jpg|474db223907a359ae77d523dc01421f1.jpg|986df7822b53f936b1ac4aa49ad646e1.jpg|409b3264220a402c56d34700bc6793dc.jpg|f20fecb1cb0c800a0f1d1e27977cd4b8.jpg|086fa395aed29a642e0189e672360038.jpg',1,25430,5),
(NULL,'ZXHD0369','公主的假日-戴安娜玫瑰11枝、白色洋桔梗5枝、尤加利10枝','戴安娜玫瑰11枝、白色洋桔梗5枝、尤加利10枝','嫣粉/玫粉色欧雅纸6张、白色OPP雾面纸3张、樱花粉色罗纹烫金丝带2米','娇羞的粉色戴安娜玫瑰与清新的白色洋桔梗，经过花艺师之手赋予了爱的意义，将这份藏于心底的爱，包裹在粉色中幸会，今晚你好吗？今夜的美妙愿你永远记住，你是我心中最甜美的公主！',299.00,199.00,'26c8ecb682f799a03e806a529e4e9bd1.jpg','23ad2161b95dc429869f466f0d05c542.jpg|37ea993b018c0c81d50fb2a07a33c5eb.jpg|c5ee6a506b38e5f74ea41a8fe253aa57.jpg|e82ebed7d9b99b99c26eea5e53824c0a.jpg|d2f7a670bf7a1e06fc2e8c5b95ea630e.jpg|806607d333601ed5f616877b57be2b02.jpg|5282e60eca76e0a5a940cc25d38a28b0.jpg|23ad2161b95dc429869f466f0d05c542.jpg|471a583ac8f49824a118daf19b6489a9.jpg|b7e1bd8f061218d931e75fd709952179.jpg|6d6c5eedb4a61bf8a9af42a010564bdd.jpg',1,35151,5),
(NULL,'ZXHD0373','心愿-白雪山玫瑰5枝、香槟玫瑰11枝、粉色小菊3枝、绿桔梗5枝、尤加利叶5枝','白雪山玫瑰5枝、香槟玫瑰11枝、粉色小菊3枝、绿桔梗5枝、尤加利叶5枝','灰/白色欧雅纸7张、白色雪梨纸2张、浅粉色罗纹玫瑰金丝带1.5米','勇敢许愿，用心实现',399.00,259.00,'95714abc18815eaea9dcd4150dc402fa.jpg','f5d42a8a84364ef6a1e0ce227f9845c9.jpg|1c93338edbfbd7e21f1503b76bab70f9.jpg|95714abc18815eaea9dcd4150dc402fa.jpg|48be467d060931d7893180e3b0ae8998.jpg|b75765a73c53d973b0ddba9803d5c73d.jpg|592c4105c91dd62ff03721dd07f57a13.jpg|f99c727ce74365ed78a440b69c3438a4.jpg|0400994f2c5929a0fd85133ba9f90209.jpg|35ac72d77cb9e2472de22906519ee517.jpg|1c79423182ea2fad88aea4b411f9e06d.jpg',1,23625,5),
(NULL,'ZXHD0375','佳期如梦-白雪山玫瑰13枝、粉色洋桔梗5枝、尤加利10枝、粉色紫罗兰5枝','白雪山玫瑰13枝、粉色洋桔梗5枝、尤加利10枝、粉色紫罗兰5枝','灰/白色欧雅纸7张、白色雪梨纸2张、粉色罗纹玫瑰金丝带各1.5米','如若柔情似水，希望佳期如梦',369.00,269.00,'5cdbf61d1d98800ff6cf655da8d677e2.jpg','53ab2a6e77562faba7db1aea170e0894.jpg|7c8f5304c8f70e6fd443d670ae348678.jpg|7b5c62ee6ea1b75f00b2de3e8b63c857.jpg|ff47bf78ed5ab86583136f5db02a6762.jpg|df50639d825da00b8a53fb903eefefc2.jpg|5511298a85e50116f753e8b15b03f53d.jpg|f4079967ca15540f9156c2e25acc3403.jpg|d9f7d5ec59d0c8b581acc950ab3b03d0.jpg|dff420c64cf3e379f780c9e9d1504c7a.jpg|38d483bd9444d0f1d4e01804a754fe44.jpg',1,26227,5),
(NULL,'ZXHD0302','说爱你-红玫瑰19枝、紫色小菊3枝','红玫瑰19枝、紫色小菊3枝、搭配适量尤加利、银叶菊、绿叶','银灰色缎带花结、灰色手提花篮','我的世界变得奇妙更难以言喻，还以为是从天而降的梦境，直到确定手的温度来自你心里，这一刻我终于勇敢说爱你。',359.00,229.00,'109decdee094c5eef1ff1d9616df7af4.jpg','a4cbbfeb92dcb7a8ec092a0590fa5cec.jpg|abd725d873da4f87a01b5917c5d025e6.jpg|31828f92118a469ed0f6e029dc300c6f.jpg|1836cd4f78b2f7e39af0effd6ed2d1d7.png|85f99f661fda9a59528c32dcc56a334f.png',0,15451,6),
(NULL,'ZXHD0298','想爱你-红玫瑰19朵、橙黄色水仙百合8枝','红玫瑰19枝、橙黄色水仙百合8枝、搭配适量尤加利、石竹梅、银叶菊、绿叶','银灰色缎带花结、银灰色手提花篮','想看你笑，想和你闹，想拥你入我怀抱，愿我们的爱情玫瑰永远娇艳欲滴。',359.00,229.00,'0035008a4487279061c33f52dc6c063e.jpg','f00c212185cc3eb282e4f7336c4b081f.jpg|929b5f7f1f505162e1bf196d7bffb125.jpg|bfaf1ab6320fe76b58c9637e724eddc6.jpg|b68be24e1a9b38b48f1a4ea22cee523d.png|3ab39b45af93878412a3eb4b9741503a.png',1,21463,6),
(NULL,'ZXHD0300','夏日香气-苏醒玫瑰19枝、粉色桔梗6枝','苏醒粉玫瑰19枝、粉色桔梗6枝，搭配适量尤加利、银叶菊、绿叶','银色缎带花结、蓝色手提花篮','你的香气，跟着风叫醒我，清晨的雨滴，装满着你的香气，不管到哪里，都想要拥有！',359.00,229.00,'ad40bbc5e809dfc4651f3132ec4c6208.jpg','12e4af195af5ea976681459de497ec2f.jpg|08e249144a6c74b8c5b1b08d5e3c241f.jpg|b21f5813bd3135326c39adb6cfc614af.jpg|f9a31785f0e4291d3e91b42726499562.png|0c53c5b7bbef9ee53ad8264e4ec0f578.png',1,21473,6),
(NULL,'ZXHD0293','生如夏花-向日葵3朵、香槟玫瑰9朵、白色小雏菊','向日葵3枝、香槟玫瑰9枝、白色小雏菊4枝、绿桔梗5枝、栀子叶4枝。','不含花瓶（或随机赠送一个花瓶）','我相信自己生来如同璀璨的夏日之花，不凋不败，妖冶如火，承受心跳的负荷和呼吸的累赘，乐此不疲。',399.00,229.00,'bb3efa5e57ad52b0f5c7c56e7115f026.jpg','48b21ab0dacc1906a0e25702a6e7f534.jpg|c001c0426afac28e3a5b9124891bdfc5.jpg|1dee56bdd83d3c3d4dcfab424d4581f3.jpg|b69ea715a16654a3367ab3504b50e02b.jpg|bb3efa5e57ad52b0f5c7c56e7115f026.jpg|213a27b3c6e331f778190cb09da54c8f.jpg',1,11543,6),
(NULL,'ZXHD0064','金日开业-开业花篮一对','扶郎','开业花篮','金日开业，送上祝福，鹏程似锦，千端称意，新业兴旺，万事顺心，四面八方，客来客往，门庭若市，店门呈盈，生意昌盛，财源滚滚！',699.00,499.00,'ec78107377cd3f2d064b87c1f7763ddf.jpg','137b191d492e4aeaeb598c4388e792e5.jpg',1,23143,7),
(NULL,'ZXHD0063','开张大吉-开业花篮一对','商务鲜花','商务鲜花','开张大吉，恭逢其盛，祝你财源犹如春潮，财源滚滚，财运犹如夏日，蒸蒸日上，生意犹如丹枫迎秋，红红火火，金钱犹如鹅毛大雪，日进斗金。祝你春夏秋冬四季发财。',699.00,499.00,'223c092335a4cfe09942039cf2516af9.jpg','a51f4c89696b03cbb00aed18cabc945b.jpg|70e033ffb7d690ff49e44c02f90cf93f.jpg|f1743c7f3db5b5c1191e5778ced941e4.jpg|3e26b3bdea8e80f6382c51f5106d4d58.jpg',1,32152,7),
(NULL,'ZXHD0062','红红火火-开业花篮一对','扶郎、康乃馨','开业花篮','祝生意兴隆遍布大中华，财源茂盛盖过红塔山，财源滚滚胜过红河，日进斗金脚踏万宝路。今日你店开张，我的祝福请笑纳。',699.00,499.00,'ac6baf18d0c37453cb1244b8d3cf5ebc.jpg','ac6baf18d0c37453cb1244b8d3cf5ebc.jpg|fe2bdfe9ab44b330bffd8743e78ed441.jpg',1,51211,7),
(NULL,'ZXHD0281','大富启源-开业花篮一对','粉百合、扶郎、桔梗、善尾葵、巴西叶等丰满（免费附送开业条幅）','免费代写贺词条幅，详见撰写说明 (您下单时可填写留言栏)','开业花篮，适合开业庆典，乔迁，祝贺。',399.00,299.00,'bc2c260384c5ef476e6e82bdf135048b.jpg','ac5dc8e79b90269979a22aec7736404a.jpg|126b8e793e56e43b3de732219d281f53.jpg',1,61559,7);
