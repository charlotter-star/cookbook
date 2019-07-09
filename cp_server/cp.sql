SET NAMES UTF8;
DROP DATABASE IF EXISTS cp;
CREATE DATABASE cp CHARSET=UTF8;
USE cp;


/**菜谱种类**/
CREATE TABLE cp_category(
  zid INT PRIMARY KEY AUTO_INCREMENT,
  zname VARCHAR(32)       #菜谱种类名称
  -- icon VARCHAR(64)         #菜谱种类图片
);
INSERT INTO cp_category VALUES
(NULL,'实用分类'),
(NULL,'每日三餐'),
(NULL,'主食'),
(NULL,'家常菜谱'),
(NULL,'中华菜系'),
(NULL,'各地小吃'),
(NULL,'外国菜谱'),
(NULL,'烘焙');

CREATE TABLE cp_tj_sancan(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(32),
  effect VARCHAR(32),      #作用
  type VARCHAR(8),
  pic VARCHAR(128)
);
INSERT INTO cp_tj_sancan VALUES
(NULL,"烙菜馍","补充维C，美容养颜","早餐","@/tj_sancan/86e5ab6c0d6860cb974d4eb266328e03.jpg"),
(NULL,"蛋酿煎","富含氨基酸，增强抵抗力","早餐","@/tj_sancan/862cc40d9ff2c6e4867351afc11182cd.jpg"),
(NULL,"豌豆冰凉粉","富含赖氨酸，增强食欲","午餐","@/tj_sancan/6810ea651eb0c2d148a47446044ecd9c.jpg"),
(NULL,"辣子鸡","富含蛋白质，增强免疫力","午餐","@/tj_sancan/d66c71eda733e15857e957b76ce7335d.jpg"),
(NULL,"核桃酥","补充碳水化合物，增强体质","下午茶","@/tj_sancan/c8bc39a79463f8cbefe13e25f17af673.jpg"),
(NULL,"自制姜枣茶","夏季吃姜，祛湿健脾","下午茶","@/tj_sancan/7ca38ba826e90313ae4b26a814254c97.jpg"),
(NULL,"五花肉","低糖低卡，强身健体","晚餐","@/tj_sancan/856488f08152fac89f504246a372db20.jpg"),
(NULL,"香菇肉末","富含蛋白质，增强抵抗力","晚餐","@/tj_sancan/1d26834b699639fa05aaa1eb21da28a1.jpg"),
(NULL,"猪油葱香汤面","补充碳水化合物，增强体质","夜宵","@/tj_sancan/7d53520072e51b7fb5de4195c942124c.jpg"),
(NULL,"卤豆腐","高蛋白低脂肪，营养补钙","夜宵","@/tj_sancan/9341c1f3c94db2e268750e4f7c5fa1a0.jpg");
