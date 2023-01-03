/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : digitalmall

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 31/05/2021 19:14:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `good_Id` int(11) NOT NULL AUTO_INCREMENT,
  `good_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `good_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `good_type` int(11) NOT NULL,
  `good_price` int(11) NOT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `good_del_state` int(11) NOT NULL,
  PRIMARY KEY (`good_Id`) USING BTREE,
  INDEX `good_type`(`good_type`) USING BTREE,
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`good_type`) REFERENCES `goods_type` (`goods_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (42, '苹果 4s', '369a8a4a4c7d4dffa8d0f9b59f2ac58b.jpg', 45, 799, 20, '商品描述\r\n商品名称：AppleiPhone 4s\r\n\r\n商品编号：10701673362\r\n\r\n店铺： 河北启迪手机专营店\r\n\r\n商品毛重：200.00g\r\n\r\n系统：苹果（IOS）\r\n\r\n运行内存：其他\r\n\r\n购买方式：其他\r\n\r\n电池容量：2000mAh-2999mAh\r\n\r\n像素：500-1000万\r\n\r\n机身内存：8GB\r\n\r\n热点：其他', 0);
INSERT INTO `goods` VALUES (43, 'Apple iPhone 7 (A1660)', '4128379b51944966989f196454cc1f92.jpg', 45, 5899, 240, '商品描述\r\n商品名称：AppleiPhone7\r\n\r\n商品编号：3133827\r\n\r\n商品毛重：390.00g\r\n\r\n商品产地：中国大陆\r\n\r\n机身内存：128GB\r\n\r\n像素：1000-1600万', 0);
INSERT INTO `goods` VALUES (44, 'Apple iPhone 6s (A1700) 16G', '455238720f8843cd9d0453864b766a5e.jpg', 45, 3799, 120, '商品描述\r\n商品名称：APPLEiPhone6s\r\n\r\n商品编号：1856584\r\n\r\n商品毛重：420.00g\r\n\r\n商品产地：中国大陆\r\n\r\n热点：指纹识别，金属机身，拍照神器\r\n\r\n系统：苹果（IOS）\r\n\r\n像素：1000-1600万\r\n\r\n机身内存：16GB\r\n\r\n机身颜色：粉色', 0);
INSERT INTO `goods` VALUES (45, '华为 P71', '6148fa71069748bdbf3813aa78697b5a.jpg', 19, 1200, 40, '商品描述\r\n商品名称：华为 P7 4G手机 16G ROM 白色 移动4G版 标配版\r\n\r\n商品编号：10064990358\r\n\r\n店铺： 牧申手机旗舰店\r\n\r\n商品毛重：0.6kg\r\n\r\n商品产地：中国大陆\r\n\r\n系统：安卓（Android）\r\n\r\n运行内存：2GB\r\n\r\n购买方式：其他\r\n\r\n电池容量：2000mAh-2999mAh\r\n\r\n像素：1000-1600万\r\n\r\n机身内存：16GB\r\n\r\n热点：拍照神器', 0);
INSERT INTO `goods` VALUES (46, '小米5 全网通 标准版', '895c0c850861429fa88c27301459046b.jpg', 20, 1599, 80, '商品描述\r\n商品名称：小米小米5\r\n\r\n商品编号：2402692\r\n\r\n商品毛重：360.00g\r\n\r\n商品产地：中国大陆\r\n\r\n系统：安卓（Android）\r\n\r\n运行内存：3GB\r\n\r\n热点：以旧换新，骁龙芯片，双卡双待，快速充电，指纹识别，拍照神器，支持NFC\r\n\r\n像素：1600万以上\r\n\r\n电池容量：3000mAh-3999mAh\r\n\r\n机身内存：32GB\r\n\r\n机身颜色：白色', 0);
INSERT INTO `goods` VALUES (47, '魅族 PRO6S 64GB', '74149ed887334e0f8f0b9f87c9ee29f8.jpg', 21, 2699, 100, '商品描述\r\n商品名称：魅族 PRO 6S\r\n\r\n商品编号：3888276\r\n\r\n商品毛重：0.56kg\r\n\r\n商品产地：中国大陆\r\n\r\n系统：安卓（Android）\r\n\r\n运行内存：4GB\r\n\r\n热点：双卡双待，指纹识别，金属机身\r\n\r\n像素：1000-1600万\r\n\r\n电池容量：3000mAh-3999mAh\r\n\r\n机身内存：64GB\r\n\r\n机身颜色：黑色', 0);
INSERT INTO `goods` VALUES (48, 'vivo X9 全网通', 'c4eac909ed074e649e97f5f9ead92456.jpg', 22, 2798, 45, '商品描述\r\n商品名称：vivo X9 全网通 4GB+64GB 移动联通电信4G手机 双卡双待 金色\r\n\r\n商品编号：10941037480\r\n\r\n店铺： vivo官方旗舰店\r\n\r\n商品毛重：0.55kg\r\n\r\n系统：安卓（Android）\r\n\r\n运行内存：4GB\r\n\r\n购买方式：其他\r\n\r\n电池容量：2000mAh-2999mAh\r\n\r\n像素：1000-1600万\r\n\r\n机身内存：64GB', 0);
INSERT INTO `goods` VALUES (49, 'OPPO R7Plus 4GB+64GB内存版', 'ad605218ff0a48cbb16ecb6d00fd5fa1.jpg', 23, 2699, 10, '商品描述\r\n商品名称：OPPOR7 Plus\r\n\r\n商品编号：2205846\r\n\r\n商品毛重：0.505kg\r\n\r\n商品产地：中国大陆\r\n\r\n热点：以旧换新，骁龙芯片，快速充电，金属机身，拍照神器，女性手机\r\n\r\n运行内存：4GB\r\n\r\n购买方式：其他\r\n\r\n电池容量：4000mAh-5999mAh\r\n\r\n像素：1000-1600万\r\n\r\n机身内存：64GB\r\n\r\n机身颜色：金色', 0);
INSERT INTO `goods` VALUES (50, '罗马仕（ROMOSS）sense4', '8758c883af32472da541ff18900917fc.jpg', 25, 59, 40, '商品描述\r\n超智能 移动电源/充电宝 10400毫安 白色 双输出 适用于苹果/安卓\r\n\r\n品牌    罗马仕（ROMOSS）\r\n型号    sense 4\r\n颜色    白色系\r\n品质联盟    是\r\n规格\r\n外壳材质    塑料\r\n容量（mAh）    10400毫安\r\n输入电压    5V\r\n输出电压    5V\r\n输出电流    2\r\n输入电流    2\r\n尺寸(mm)    L138×W62×H21.5mm\r\n重量    296克\r\n特性\r\nUSB接口数    双口\r\nLED灯    无', 0);
INSERT INTO `goods` VALUES (51, '品胜 充电线器 HDMI  Micro', 'd02b0abdd161430491dd4aad8015cc42.jpg', 28, 19, 1000, '品牌名称：品胜\r\n产品参数：\r\n品牌: 品胜接口类型: HDMI Micro USB TYPE-C apple Lightning生产企业: 广东品胜数码有限公司款式: 直头式分线接头数量: 单头长度: 1m', 0);
INSERT INTO `goods` VALUES (52, '绿联正品type-c数据线5a超级快充', 'fe7e07d77f0b4cfdb3c85c5eed74e25e.jpg', 29, 19, 85, '品牌名称：绿联\r\n产品参数：\r\n\r\n品牌: 绿联颜色分类: 【收藏+加购】优先发货★两年免费换新★此项勿拍 亮面白【雅致高光·更配原机30分钟充满86%】一条装 亮面白【雅致高光·更配原机30分钟充满86%】两条装 亮面黑【雅致高光·更配原机30分钟充满86%】一条装 亮面黑【雅致高光·更配原机30分钟充满86%】两条装 标准白【适用华为超级快充★30分钟充满86%】一条装 标准白【适用华为超级快充★30分钟充满86%】两条装 标准黑【适用华为超级快充★30分钟充满86%】一条装 标准黑【适用华为超级快充★30分钟充满86%】两条装 双色两条装【雅致高光·更配原机★30分钟充满86%】 黑色-弯头款【玩游戏不挡手★30分钟充满86%.】 华为荣耀超级快充套装【5A充电器+超级快充线.】生产企业: 深圳市绿联科技有限公司长度: 0.25M 0.5m 1m 1.5m 2m 3M数据线适用范围: 手机款式: 直头式', 0);
INSERT INTO `goods` VALUES (53, 'Sony/索尼 MDR-ZX110AP 头戴式重低音耳机', '00a3e31f53e5405ba84e4e13b4095a8d.jpg', 30, 139, 98, '品牌名称：Sony/索尼\r\n产品参数：\r\n\r\n产品名称：Sony/索尼 MDR-ZX110AP品牌: Sony/索尼型号: MDR-ZX110AP耳机材质: 塑料耳机售后服务: 全国联保颜色分类: 黑色 白色套餐类型: 官方标配 套餐一 套餐二 套餐三缆线长度: 约 1.2 m生产企业: 索尼中国耳机类别: 手机线控耳机有无麦克风: 带麦佩戴方式: 头戴护耳式耳机类型: 有线是否线控: 是阻抗: 24Ω灵敏度: 98dB/mW频响范围: 12-22000Hz保修期: 12个月耳机与播放设备连接方式: 有线连接', 0);
INSERT INTO `goods` VALUES (54, 'Samsung/三星 Galaxy Buds Pro真无线降噪蓝牙耳机', '22a46fb4dc2f4489997d4dc0680c5ef9.jpg', 31, 1299, 899, '品牌名称：Samsung/三星\r\n产品参数：\r\n\r\n品牌: Samsung/三星型号: SM-R190颜色分类: 梵梦紫 幽夜黑 幻境银防水性能: IPX7', 0);
INSERT INTO `goods` VALUES (55, '天猫精灵IN糖智能音箱蓝牙音响 IN糖 家用智能音', '22a46fb4dc2f4489997d4dc0680c5ef9.jpg', 32, 119, 40, '品牌名称：天猫精灵\r\n产品参数：\r\n\r\n产品名称：天猫精灵 IN糖 家用智能音...品牌: 天猫精灵型号: IN糖 家用智能音箱颜色分类: 布蕉绿 新潮红 天真蓝 冲鸭白套餐类型: IN糖 IN糖+按呗生产企业: 浙江天猫供应链管理有限公司供电方式: 电源连接线操作系统: AliGenie语音助手连接方式: Wi-Fi连接 蓝牙连接功能: 语音提示 听歌听书语言助手系统: AliGenie语音助手麦克风阵列: 2', 0);
INSERT INTO `goods` VALUES (56, '小度智能音箱旗舰版 蓝牙音箱无线wifi小音箱小度机器人', '2d3b5efbe793461282d9325c7161e21f.jpg', 33, 149, 14, '品牌名称：小度\r\n产品参数：\r\n\r\n产品名称：小度 小度智能音箱 旗舰版品牌: 小度型号: 小度智能音箱 旗舰版功能: 语音提示 闹钟颜色分类: 旗舰版 白色套餐类型: 官方标配生产企业: 北京百度网讯科技有限公司保修期: 12个月', 0);
INSERT INTO `goods` VALUES (57, '联想(Lenovo)IdeaPad310', '0561ce48c35d4603b3b17af0b754ad47.jpg', 34, 4500, 899, '商品描述\r\n15.6英寸高性能笔记本（A12-9700P 8G 1T R5 M430 2G显存 正版office2016)白\r\n\r\n主体\r\n型号ideapad 310颜色白色平台AMD\r\n操作系统\r\n操作系统Windows 10\r\n处理器\r\nCPU类型AMD 四核处理器CPU型号A12-9700PCPU速度较大频率：3.4GHz核心四核\r\n内存\r\n内存容量8GB内存类型DDR4 2133\r\n硬盘\r\n硬盘容量1TB接口类型SATA 串行\r\n显卡\r\n类型独立显卡显示芯片AMD Radeon? R5 430M显存容量独立2GB\r\n光驱\r\n光驱类型无光驱\r\n显示器\r\n屏幕规格15.6英寸显示比例宽屏16：9物理分辨率1366 x 768屏幕类型LED背光\r\n通信\r\n内置蓝牙有局域网10/100/1000Mbps无线局域网有\r\n端口\r\nUSB2.02 个音频端口耳机、麦克风二合一接口显示端口VGA x 1/ HDMI x 1RJ451个USB3.01个\r\n音效系统\r\n扬声器内置扬声器内置麦克风有\r\n输入设备\r\n键盘巧克力键盘触摸板有\r\n其它设备\r\n网络摄像头有\r\n电源\r\n电池2芯 锂离子电池续航时间2-5小时电源适配器100-240V自适应交流电源适配器\r\n机器规格\r\n尺寸379x260x22.9mm净重2-2.5kg\r\n包装清单\r\n笔记本电脑× 1 电源线× 1 电池× 1', 0);
INSERT INTO `goods` VALUES (58, '戴尔（DELL）游匣15PR-3848B', '360de599de6546968f13c416b570752d.jpg', 35, 4999, 800, '商品描述\r\n15.6英寸游戏笔记本电脑 （i7-6700HQ 4G 128G SSD + 500G GTX960M4G Win10）黑\r\n\r\n主体\r\n系列灵越游匣型号Ins15PR-3848B颜色黑色平台Intel翻新类型全新\r\n操作系统\r\n操作系统Windows 10家庭版\r\n处理器\r\nCPU类型第六代智能英特尔 酷睿 i7-6700HQ 处理器CPU型号i7-6700HQCPU速度高至 3.50 GHz三级缓存6M核心四核\r\n内存\r\n内存容量4GB 单通道内存类型DDR3L 1600MHz (4GBx1)\r\n硬盘\r\n硬盘容量500GB转速5400转/分钟接口类型SATA 串行固态硬盘128GB 固态硬盘\r\n显卡\r\n类型NVIDIA GeForce GTX 960M显存容量独立4GB\r\n光驱\r\n光驱类型无光驱\r\n显示器\r\n屏幕尺寸15.6英寸 FHD (1920 x 1080) 防眩光 LED背光显示器屏幕规格15.6英寸显示比例宽屏16：9物理分辨率1920×1080屏幕类型LED背光特征防眩光\r\n通信\r\n局域网其它无线局域网英特尔 3165AC + BT4.0 [802.11ac + 蓝牙 4.0, 双频 2.4&5 GHz, 1x1]\r\n端口\r\n音频端口耳机、麦克风二合一接口显示端口HDMI接口RJ451个USB3.03个USB 3.0端口，其中1个带PowerShare功能\r\n音效系统\r\n扬声器内置扬声器内置麦克风有\r\n输入设备\r\n键盘标准全尺寸、防泼溅键盘（带数字小键盘）触摸板有\r\n其它设备\r\n网络摄像头有\r\n电源\r\n电池74 瓦时, 6芯电池(集成)续航时间长达11小时电池续航时间电源适配器130 W交流适配器\r\n机器规格\r\n尺寸383 x 265 x 25.3毫米净重起始重量为2.57千克/5.67磅，带全高清防眩光非触控型显示屏和8 GB内存 起始重量为2.72千克/6.0磅，带4K超高清触摸屏和16 GB内存\r\n特性\r\n特性描述15.6英寸大屏游戏本，为战升级 热血不掉格', 0);
INSERT INTO `goods` VALUES (59, 'Apple iPad mini 4 128G 超清', '252342d8661a464cbbad1e7d4aa1f524.jpg', 36, 4000, 998, '商品描述\r\n平板电脑 7.9英寸（128G WLAN版/A8芯片/Retina显示屏/Touch ID技术 MK9P2CH）银色\r\n\r\n商品名称：AppleiPad mini4\r\n商品编号：1892019\r\n商品毛重：0.59kg\r\n商品产地：中国大陆\r\n系统：ios系统\r\n硬盘：128G\r\n尺寸：7.1英寸-9英寸\r\n分辨率：超高清屏（2K/3K/4K）\r\n热门：iPad\r\n分类：娱乐平板\r\n裸机重量：300g以下\r\n厚度：7.0mm以下', 0);
INSERT INTO `goods` VALUES (60, '荣耀平板2 JDN-W09颜色珍珠白', '24f9ed9c681d4134b4d10c42b2c7b0c6.jpg', 37, 1299, 999, '商品描述\r\n标准版 8英寸 (八核 3G/16G 1920x1200 4800mAh WiFi) 珍珠白\r\n\r\n主体\r\n型号JDN-W09颜色珍珠白上市时间2016年10月操作系统Android 6.0+EMUI4.0\r\n配置\r\n存储容量16GB核心数量八核系统内存3GB扩展支持Micro SD可扩展容量128GB\r\n显示\r\n屏幕尺寸8英寸屏幕分辨率1920x1200屏幕比例16:10屏幕类型IPS屏幕描述IPS屏幕指取设备触摸\r\n连接\r\n蓝牙功能支持\r\n音效\r\n扬声器有麦克风有\r\n功能\r\n摄像头像素后置800万摄像头/前置200万摄像头视频拍摄支持多点触控支持电影播放1080pFlash播放支持重力感应支持内置软件百度搜索，百度地图，WPS Office\r\n电源\r\n电池容量4800mAh续航时间理论待机时间约450小时\r\n规格\r\n尺寸209.3mm*123mm*8.1mm净重340g\r\n包装清单\r\n主机 x 1、充电器 x 1、数据线 x 1、保修卡 x 1、说明书 x 1', 0);
INSERT INTO `goods` VALUES (61, '三星 2016版 Galaxy On5', '594274fe5da042dbab02bd88422c69c2.jpg', 38, 1299, 400, '商品描述\r\n（G5700） 32G 臻金版 流沙金 全网通 4G手机 双卡双待\r\n\r\n主体\r\n品牌三星（SAMSUNG）型号G5700(online)入网型号以官网信息为准上市年份2016年上市月份10月\r\n基本信息\r\n机身颜色流沙金机身长度（mm）142.8机身宽度（mm）69.5机身厚度（mm）8.1机身重量（g）143输入方式触控运营商标志或内容无机身材质分类其他\r\n操作系统\r\n操作系统Android操作系统版本Andriod 6.0\r\n主芯片\r\nCPU品牌骁龙（Snapdragon)CPU频率1.5GHzCPU核数八核CPU型号骁龙617（msm8952）\r\n网络支持\r\n双卡机类型其他较大支持SIM卡数量2个SIM卡类型其他4G网络--3G/2G网络--网络频率（4G）FDD：B1(2100),B3(1800),B7(2600),B8(900) TDD：B38(2600),B39(1900),B40(2300),B41(2500)网络频率（2G/3G）2G：GSM 850/900/1800/1900；2G：CDMA 800；2G：GSM 900/1800/1900；--\r\n存储\r\nROM32GBRAM3GB存储卡支持MicroSD（TF）较大存储扩展容量256GB\r\n屏幕\r\n主屏幕尺寸（英寸）5.0英寸分辨率1280×720（HD）屏幕材质类型TFT\r\n前置摄像头\r\n前置摄像头800万像素前摄光圈大小其他拍照特点自动对焦\r\n后置摄像头\r\n摄像头数量1个后置摄像头1300万像素\r\n电池信息\r\n电池容量（mAh）2600电池是否可拆卸否充电器其他\r\n数据接口\r\n数据传输接口WIFI；蓝牙；WiFi热点NFC/NFC模式不支持耳机接口类型3.5mm充电接口类型其他\r\n手机特性\r\n指纹识别支持GPS支持陀螺仪其他\r\n辅助功能\r\n常用功能其他；收音机；录音；超大字体\r\n包装清单\r\n主机 x1数据线 x1充电器 x1说明书 x1', 0);
INSERT INTO `goods` VALUES (62, '小天才电话手表  XTC-Y02', '5360694b8591476da67e019dfc1b558f.jpg', 39, 199, 889, '商品描述\r\n触屏儿童电话手表手机男可插卡\r\n\r\n主体\r\n品牌    小天才\r\n型号    XTC-Y02\r\n颜色    紫色\r\n处理器    MT6261D\r\n操作系统    Nucleus OS\r\n系统内存    ROM：32Mb； RAM：32Mb\r\n机身内存    Nor flash：32Mb\r\n存储卡    Nano SIM\r\n适用范围    工作环境温度0°C至35°C，湿度15-93%（非凝结状态下）\r\n防水    参考GB4208标准测试，出厂产品防水等级为IPX7\r\n显示屏\r\n屏幕尺寸    0.91\r\n屏幕分辨率    96×64\r\n屏幕材质    PMOLED\r\n触摸屏    按键触控\r\n通讯功能\r\n拨打电话    支持\r\n免持接听    支持\r\n来电提醒    需开通\r\n短信收发    短信接收\r\n娱乐功能\r\n内置扬声器    支持\r\n其他功能    多重定位、佩戴检测、泡水提醒\r\n连接方式\r\n蓝牙    支持（BLE）\r\nWIFI    支持wifi定位\r\n数据接口    GPRS\r\n其他参数\r\n电池容量    385mAh\r\n待机时长    2-3天\r\n产品尺寸    50mm×40mm×40mm\r\n产品重量    整机45g，表盘33ga', 0);
INSERT INTO `goods` VALUES (63, 'Apple Watch  Sport Series', 'e1868045dc104cc7864a1a4f369c2f42.jpg', 40, 2000, 999, '商品描述\r\nSport Series 1智能手表\r\n\r\n主体\r\n品牌    Apple\r\n型号    Apple Watch Series 1\r\n处理器    S1P 双核处理器\r\n操作系统    watchOS 3\r\n防水    防水溅\r\n显示屏\r\n屏幕材质    Ion-X 玻璃镜面\r\n连接方式\r\n蓝牙    蓝牙 4.0\r\nWIFI    无线网络 (802.11b/g/n 2.4GHz)\r\n其他参数\r\n待机时长    较长可达 18 小时的电池使用时间\r\n产品重量    表壳重量：25 克', 0);
INSERT INTO `goods` VALUES (64, '华为（HUAWEI）荣耀手环', 'b80db465a4434bfea2b35cb7f226b371.jpg', 41, 319, 555, '商品描述\r\n荣耀手环zero 经典黑长 智能运动健康手环手表 触控屏幕8级防水\r\n\r\n主体\r\n品牌    华为\r\n型号    荣耀手环zero\r\n颜色    黑色\r\n操作系统    Android 4.4及以上（同时支持蓝牙4.0） iOS 7.0及以上\r\n适用范围    适用范围：具体机型请参考商品详情页面的支持手机列表\r\n防水    IP68\r\n显示屏\r\n触摸屏    OLED 触摸屏\r\n娱乐功能\r\n其他功能    触摸操控，支持上下左右滑动、长按、点击操作\r\n连接方式\r\n蓝牙    蓝牙4.1(BLE模式)\r\n数据接口    POGO PIN USB口\r\n其他参数\r\n电池容量    70mAh\r\n待机时长    4天工作时间、15天待机时间\r\n产品尺寸    主体：38mmx9.5mm', 0);
INSERT INTO `goods` VALUES (65, '小米（MI）小米手环2', 'cd2d7da204014f7eb2c10cf1471444fe.jpg', 42, 159, 444, '商品描述\r\n小米（MI）小米手环2\r\n\r\n主体\r\n品牌    小米\r\n型号    小米手环2\r\n颜色    黑色\r\n适用范围    支持系统为 iOS 7.0 及以上版本的 iPhone 4S / 5 / 5S / 5C / 6 / 6 Plus;兼容系统为 Android 4.4 及以上版本，并支持蓝牙4.0的安卓智能手机\r\n防水    是\r\n翻新类型    全新\r\n显示屏\r\n屏幕尺寸    0.42英寸\r\n屏幕材质    OLED显示屏\r\n触摸屏    触摸键\r\n通讯功能\r\n来电提醒    支持\r\n娱乐功能\r\n计步器    支持\r\n其他功能    记录睡眠状态,震动叫醒,手机来电提醒\r\n连接方式\r\n蓝牙    是\r\n其他参数\r\n电池容量    70mAh\r\n待机时长    20天\r\n产品尺寸    155mm-210mm\r\n产品重量    7g', 0);
INSERT INTO `goods` VALUES (66, '暴风魔镜', '1ca1a65bf16f43e881f62b3f32f055d1.jpg', 43, 179, 456, '商品描述\r\n4代安卓版 虚拟现实智能VR眼镜3D头盔\r\n\r\n\r\n    商品名称：暴风魔镜暴风魔镜4代\r\n    商品编号：2179959\r\n    商品毛重：0.91kg\r\n    商品产地：中国大陆\r\n    热点：3D电影，全景360°，游戏娱乐，瞳距调节，巨幕影院，私人影院，延迟低，安装方便，清晰度高，旅游视频，资源丰富，沉浸式体验\r\n    外设：蓝牙手柄\r\n    类型：VR眼镜（配合手机使用）\r\n    传输方式：无线\r\n    适用人群：上班族，宅男，游戏达人，运动达人\r\n    兼容性：Andriod平台', 0);
INSERT INTO `goods` VALUES (67, '蓝盔V1 天力星', '2847b1993ad2475e9f67e1eef90ec2ea.jpg', 44, 1499, 20, '商品描述\r\n﻿\r\n智能vr 3D眼镜一体机虚拟现实游戏头盔盒子vrbox 标配-蓝牙游戏手柄-闪存卡-耳机\r\n\r\n品名称：蓝盔V1 天力星 智能vr 3D眼镜一体机虚拟现实游戏头盔盒子vrbox 标配-蓝牙游戏手柄-闪存卡-耳机\r\n商品编号：10678056470\r\n店铺： 天力星官方旗舰店\r\n商品毛重：395.00g\r\n热点：资源丰富\r\n传输方式：其它　\r\n适用人群：宅男\r\n外设：自带触摸板', 0);
INSERT INTO `goods` VALUES (68, 'adasdaaada', '1ca6d1ac363f4c169eb8617333d0297f.jpg', 34, 1341, 455, '31d3a', 1);
INSERT INTO `goods` VALUES (69, 'test', '5291e98531914de0baa27f19b93ad7df.jpg', 19, 1213, 999, 'aaa', 1);
INSERT INTO `goods` VALUES (70, '测试', '8410eaf6f4ef488a9f00099b06dcb74f.jpg', 19, 1213, 999, 'aaaa', 1);
INSERT INTO `goods` VALUES (71, '测试1', 'bfd52cee5f444431b2a9bfe72fa853f9.jpg', 25, 1213, 45, '阿阿斯顿', 1);
INSERT INTO `goods` VALUES (72, '测试', 'e125ccdc53f54a4d86ae1f719e03fc92.jpg', 31, 1299, 44, '哎哎哎', 1);
INSERT INTO `goods` VALUES (73, 'adasdaaa', '3184ae3806fb4763a99934faa1de0226.jpg', 20, 1213, 999, 'aaaa', 1);

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type`  (
  `goods_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_type` int(11) NOT NULL,
  `goods_type_parent_id` int(11) NULL DEFAULT NULL,
  `sort_num` int(11) NOT NULL,
  `del_state` int(11) NOT NULL,
  PRIMARY KEY (`goods_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES (1, '手机', 1, 0, 1, 0);
INSERT INTO `goods_type` VALUES (2, '配件', 1, 0, 2, 0);
INSERT INTO `goods_type` VALUES (3, '笔记本', 1, 0, 3, 0);
INSERT INTO `goods_type` VALUES (4, '平板电脑', 1, 0, 4, 0);
INSERT INTO `goods_type` VALUES (5, '穿戴设备', 1, 0, 5, 0);
INSERT INTO `goods_type` VALUES (6, 'Android', 2, 1, 1, 0);
INSERT INTO `goods_type` VALUES (7, 'ios', 2, 1, 2, 0);
INSERT INTO `goods_type` VALUES (8, '移动电源', 2, 2, 1, 0);
INSERT INTO `goods_type` VALUES (9, '数据线', 2, 2, 2, 0);
INSERT INTO `goods_type` VALUES (10, '耳机', 2, 2, 3, 0);
INSERT INTO `goods_type` VALUES (11, '音响', 2, 2, 4, 0);
INSERT INTO `goods_type` VALUES (12, 'AMD系列', 2, 3, 1, 0);
INSERT INTO `goods_type` VALUES (13, 'Intel系列', 2, 3, 2, 0);
INSERT INTO `goods_type` VALUES (14, 'ios', 2, 4, 1, 0);
INSERT INTO `goods_type` VALUES (15, 'Android', 2, 4, 2, 0);
INSERT INTO `goods_type` VALUES (16, '智能手表', 2, 5, 1, 0);
INSERT INTO `goods_type` VALUES (17, '手环', 2, 5, 2, 0);
INSERT INTO `goods_type` VALUES (18, 'VR', 2, 5, 3, 0);
INSERT INTO `goods_type` VALUES (19, '华为', 3, 6, 1, 0);
INSERT INTO `goods_type` VALUES (20, '小米', 3, 6, 2, 0);
INSERT INTO `goods_type` VALUES (21, '魅族', 3, 6, 3, 0);
INSERT INTO `goods_type` VALUES (22, 'vivo', 3, 6, 4, 0);
INSERT INTO `goods_type` VALUES (23, 'oppo', 3, 6, 5, 0);
INSERT INTO `goods_type` VALUES (25, '罗马仕', 3, 8, 1, 0);
INSERT INTO `goods_type` VALUES (26, '飞利浦', 3, 8, 2, 0);
INSERT INTO `goods_type` VALUES (27, '羽博', 3, 8, 3, 0);
INSERT INTO `goods_type` VALUES (28, '品胜', 3, 9, 1, 0);
INSERT INTO `goods_type` VALUES (29, '绿联', 3, 9, 2, 0);
INSERT INTO `goods_type` VALUES (30, '索尼', 3, 10, 1, 0);
INSERT INTO `goods_type` VALUES (31, '三星', 3, 10, 2, 0);
INSERT INTO `goods_type` VALUES (32, '天猫精灵', 3, 11, 1, 0);
INSERT INTO `goods_type` VALUES (33, '小度', 3, 11, 2, 0);
INSERT INTO `goods_type` VALUES (34, '联想', 3, 12, 3, 0);
INSERT INTO `goods_type` VALUES (35, '戴尔', 3, 13, 1, 0);
INSERT INTO `goods_type` VALUES (36, '苹果', 3, 14, 1, 0);
INSERT INTO `goods_type` VALUES (37, '华为', 3, 15, 1, 0);
INSERT INTO `goods_type` VALUES (38, '三星', 3, 15, 2, 0);
INSERT INTO `goods_type` VALUES (39, '小天才', 3, 16, 1, 0);
INSERT INTO `goods_type` VALUES (40, '苹果', 3, 16, 2, 0);
INSERT INTO `goods_type` VALUES (41, '华为', 3, 17, 1, 0);
INSERT INTO `goods_type` VALUES (42, '小米', 3, 17, 2, 0);
INSERT INTO `goods_type` VALUES (43, '暴风', 3, 18, 1, 0);
INSERT INTO `goods_type` VALUES (44, '蓝盔', 3, 18, 2, 0);
INSERT INTO `goods_type` VALUES (45, '苹果', 3, 7, 1, 0);
INSERT INTO `goods_type` VALUES (47, '摄影摄像1', 3, 8, 4, 1);
INSERT INTO `goods_type` VALUES (48, '摄影摄像1', 3, 1, 4, 1);
INSERT INTO `goods_type` VALUES (49, '摄影摄像a', 2, 6, 4, 1);
INSERT INTO `goods_type` VALUES (50, '摄影摄像', 3, 6, 2, 0);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` int(11) NULL DEFAULT NULL,
  `order_good_id` int(11) NOT NULL,
  `order_user_id` int(11) NOT NULL,
  `order_operator_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quality` int(11) NOT NULL,
  `order_state` int(11) NOT NULL,
  `order_del_state` int(11) NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `order_user_id`(`order_user_id`) USING BTREE,
  INDEX `order_good_id`(`order_good_id`) USING BTREE,
  CONSTRAINT `order_good_id` FOREIGN KEY (`order_good_id`) REFERENCES `goods` (`good_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `order_user_id` FOREIGN KEY (`order_user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, NULL, 42, 1, '2021-05-11 06:50:09', 9, 0, 0);
INSERT INTO `orders` VALUES (2, NULL, 44, 26, '2021-05-11 06:50:36', 4, 0, 0);
INSERT INTO `orders` VALUES (3, NULL, 45, 4, '2021-05-11 06:50:57', 4, 0, 0);
INSERT INTO `orders` VALUES (4, NULL, 47, 4, '2021-05-11 08:10:46', 4, 0, 0);
INSERT INTO `orders` VALUES (5, NULL, 49, 26, '2021-05-11 08:11:14', 3, 0, 0);
INSERT INTO `orders` VALUES (6, NULL, 67, 1, '2021-05-11 14:45:06', 1, 0, 1);
INSERT INTO `orders` VALUES (7, NULL, 45, 1, '2021-05-24 21:51:26', 1, 0, 1);
INSERT INTO `orders` VALUES (8, NULL, 67, 1, '2021-05-24 22:13:12', 1, 0, 1);
INSERT INTO `orders` VALUES (9, NULL, 67, 1, '2021-05-24 23:06:28', 2, 0, 1);
INSERT INTO `orders` VALUES (10, NULL, 67, 1, '2021-05-24 23:13:43', 3, 0, 1);
INSERT INTO `orders` VALUES (11, NULL, 46, 1, '2021-05-24 23:22:23', 1, 0, 1);
INSERT INTO `orders` VALUES (12, NULL, 47, 1, '2021-05-24 23:22:55', 1, 0, 1);
INSERT INTO `orders` VALUES (13, NULL, 67, 1, '2021-05-24 23:24:31', 8, 0, 1);
INSERT INTO `orders` VALUES (14, NULL, 45, 1, '2021-05-24 23:24:47', 2, 0, 1);
INSERT INTO `orders` VALUES (15, NULL, 46, 1, '2021-05-24 23:25:10', 2, 0, 1);
INSERT INTO `orders` VALUES (16, NULL, 47, 1, '2021-05-24 23:25:28', 7, 0, 0);
INSERT INTO `orders` VALUES (17, NULL, 46, 1, '2021-05-24 23:30:05', 3, 0, 1);
INSERT INTO `orders` VALUES (18, NULL, 46, 1, '2021-05-24 23:31:05', 4, 0, 1);
INSERT INTO `orders` VALUES (19, NULL, 46, 1, '2021-05-24 23:58:33', 5, 0, 0);
INSERT INTO `orders` VALUES (20, NULL, 45, 1, '2021-05-25 21:25:47', 3, 0, 1);
INSERT INTO `orders` VALUES (21, NULL, 45, 1, '2021-05-25 21:26:05', 4, 0, 1);
INSERT INTO `orders` VALUES (22, NULL, 45, 1, '2021-05-25 21:26:10', 5, 0, 1);
INSERT INTO `orders` VALUES (23, NULL, 63, 1, '2021-05-25 21:28:22', 0, 0, 1);
INSERT INTO `orders` VALUES (24, NULL, 63, 1, '2021-05-25 21:29:16', 1, 0, 1);
INSERT INTO `orders` VALUES (25, NULL, 63, 1, '2021-05-25 21:29:24', 2, 0, 1);
INSERT INTO `orders` VALUES (26, NULL, 63, 1, '2021-05-25 21:33:29', 3, 0, 1);
INSERT INTO `orders` VALUES (27, NULL, 63, 1, '2021-05-25 21:33:36', 4, 0, 1);
INSERT INTO `orders` VALUES (28, NULL, 50, 1, '2021-05-25 21:33:59', 0, 0, 1);
INSERT INTO `orders` VALUES (29, NULL, 50, 1, '2021-05-25 21:34:45', 1, 0, 1);
INSERT INTO `orders` VALUES (30, NULL, 50, 1, '2021-05-25 21:38:58', 2, 0, 1);
INSERT INTO `orders` VALUES (31, NULL, 50, 1, '2021-05-25 21:39:20', 12347, 0, 1);
INSERT INTO `orders` VALUES (32, NULL, 45, 1, '2021-05-25 21:42:22', 8, 0, 1);
INSERT INTO `orders` VALUES (33, NULL, 46, 44, '2021-05-26 09:14:16', 1, 0, 1);
INSERT INTO `orders` VALUES (34, NULL, 46, 44, '2021-05-26 09:14:54', 5, 0, 0);
INSERT INTO `orders` VALUES (35, NULL, 47, 44, '2021-05-26 09:15:19', 1, 0, 1);
INSERT INTO `orders` VALUES (36, NULL, 47, 44, '2021-05-26 09:15:52', 2, 0, 0);
INSERT INTO `orders` VALUES (37, NULL, 48, 44, '2021-05-26 09:16:13', 1, 0, 0);
INSERT INTO `orders` VALUES (38, NULL, 49, 44, '2021-05-26 09:17:10', 1, 0, 0);
INSERT INTO `orders` VALUES (39, NULL, 50, 44, '2021-05-26 09:21:58', 3, 0, 0);
INSERT INTO `orders` VALUES (40, NULL, 51, 44, '2021-05-26 09:22:20', 5, 0, 0);
INSERT INTO `orders` VALUES (41, NULL, 65, 3, '2021-05-26 09:23:44', 4, 0, 0);
INSERT INTO `orders` VALUES (42, NULL, 48, 3, '2021-05-26 09:23:54', 4, 0, 0);
INSERT INTO `orders` VALUES (43, NULL, 52, 3, '2021-05-26 09:24:02', 2, 0, 0);
INSERT INTO `orders` VALUES (44, NULL, 63, 3, '2021-05-26 09:24:13', 5, 0, 0);
INSERT INTO `orders` VALUES (45, NULL, 67, 1, '2021-05-26 10:01:35', 11, 0, 0);

-- ----------------------------
-- Table structure for user_type
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type`  (
  `userTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `userTypeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userTypeDelState` int(11) NULL DEFAULT NULL,
  `userTypeSort` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`userTypeId`) USING BTREE,
  INDEX `userTypeSort`(`userTypeSort`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_type
-- ----------------------------
INSERT INTO `user_type` VALUES (1, '超级管理员', 0, 1);
INSERT INTO `user_type` VALUES (2, '管理员', 0, 2);
INSERT INTO `user_type` VALUES (3, '商家', 0, 3);
INSERT INTO `user_type` VALUES (4, '用户', 0, 4);
INSERT INTO `user_type` VALUES (5, 'vip', 1, 4);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_operator_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_type` int(11) NOT NULL,
  `user_order_id` int(11) NULL DEFAULT NULL,
  `user_comment_id` int(11) NULL DEFAULT NULL,
  `user_announce_id` int(11) NULL DEFAULT NULL,
  `user_del_state` int(11) NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `user_order_id`(`user_order_id`) USING BTREE,
  INDEX `user_type`(`user_type`) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_type`) REFERENCES `user_type` (`userTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'btw', 'c53a2b751bbc0eee6c082755afdb1e6e', 'btw@qq.com', '2021-02-09 17:28:52', 1, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (2, 'business1', 'c53a2b751bbc0eee6c082755afdb1e6e', 'business1@qq.com', '2021-02-19 10:09:47', 3, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (3, 'user1', 'c53a2b751bbc0eee6c082755afdb1e6e', 'user1@qq.com', '2021-02-19 10:10:29', 4, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (4, 'sys1', 'c53a2b751bbc0eee6c082755afdb1e6e', 'sys1@136.com', '2021-02-19 10:17:53', 2, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (23, 'user2', 'c53a2b751bbc0eee6c082755afdb1e6e', '12354@163.com', '2021-02-20 11:59:44', 4, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (24, 'user3', 'c53a2b751bbc0eee6c082755afdb1e6e', '2a45sd4@163.com', '2021-02-22 15:33:36', 4, NULL, NULL, NULL, 1);
INSERT INTO `users` VALUES (25, 'user4', 'c53a2b751bbc0eee6c082755afdb1e6e', '24saaad@126.com', '2021-02-22 15:46:44', 4, NULL, NULL, NULL, 1);
INSERT INTO `users` VALUES (26, 'aad5s24', 'c53a2b751bbc0eee6c082755afdb1e6e', 'btwssss@qq.com', '2021-02-22 16:37:46', 3, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (27, 'aad5s24dasd', 'c53a2b751bbc0eee6c082755afdb1e6e', 'bsstsssw@qq.com', '2021-04-24 16:51:54', 3, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (28, 'aad5s24aa', 'dc483e80a7a0bd9ef71d8cf973673924', 'batw@qq.com', '2021-05-11 15:25:57', 2, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (29, 'aad5s2414141', '8a6f2805b4515ac12058e79e66539be9', 'baaatw@qq.com', '2021-05-14 22:11:00', 4, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (30, 'aad5s2414141aaa', '8a6f2805b4515ac12058e79e66539be9', 'baaatw@qq.com', '2021-05-14 22:11:22', 4, NULL, NULL, NULL, 1);
INSERT INTO `users` VALUES (31, 'aa145', 'dc483e80a7a0bd9ef71d8cf973673924', 'baaatwaa@qq.com', '2021-05-14 22:11:49', 4, NULL, NULL, NULL, 1);
INSERT INTO `users` VALUES (32, 'aad5s24aa', 'dc483e80a7a0bd9ef71d8cf973673924', 'basdtw@qq.com', '2021-05-14 22:27:17', 4, NULL, NULL, NULL, 1);
INSERT INTO `users` VALUES (33, 'aad5s24', 'dc483e80a7a0bd9ef71d8cf973673924', 'btwdas@qq.com', '2021-05-14 22:31:45', 4, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (34, 'aad5s24a', 'af8f9dffa5d420fbc249141645b962ee', 'btasdaw@qq.com', '2021-05-14 22:33:02', 2, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (35, 'aad5s24asdaaa', 'adbf5a778175ee757c34d0eba4e932bc', 'btw1@qq.com', '2021-05-14 22:34:11', 2, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (36, 'aad5s24da', '5ca2aa845c8cd5ace6b016841f100d82', 'aabdastw@qq.com', '2021-05-14 22:44:48', 4, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (37, 'aad5s24a', '59b466fd93164953e56bdd1358dc0044', 'btwaaaad@qq.com', '2021-05-14 22:45:23', 4, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (38, 'aad5s24', 'dc483e80a7a0bd9ef71d8cf973673924', 'baatw@qq.com', '2021-05-14 22:47:46', 3, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (39, 'aad5s24', 'dc483e80a7a0bd9ef71d8cf973673924', 'baaatw@qq.com', '2021-05-14 22:47:59', 4, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (40, 'aad5s2asd4', 'dc483e80a7a0bd9ef71d8cf973673924', 'bsstssaaadsadsw@qq.com', '2021-05-14 22:49:04', 2, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (41, 'aad5s24asd', '43b24999451662038e4e545e91385bbe', 'btwas@qq.com', '2021-05-14 22:50:04', 4, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (42, 'aad5s24dsad', '43b24999451662038e4e545e91385bbe', 'bsstsssasdsaw@qq.com', '2021-05-14 22:51:08', 4, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (43, 'aad5s24aaa', 'dc483e80a7a0bd9ef71d8cf973673924', 'btwa@qq.com', '2021-05-15 20:05:04', 3, NULL, NULL, NULL, 0);
INSERT INTO `users` VALUES (44, 'btw1', 'c53a2b751bbc0eee6c082755afdb1e6e', 'btw111@qq.com', '2021-05-24 19:58:17', 2, NULL, NULL, NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
