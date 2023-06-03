import 'package:agritype/home/slivers/composition.dart';
import 'package:agritype/home/slivers/desc.dart';
import 'package:agritype/home/slivers/percentIndicator.dart';
import 'package:agritype/home/slivers/properties.dart';
import 'package:agritype/home/slivers/propertyDesc.dart';
import 'package:agritype/home/slivers/sAppBar.dart';
import 'package:agritype/home/slivers/smain.dart';
import 'package:agritype/home/slivers/spacer.dart';
import 'package:agritype/home/slivers/uses.dart';
import 'package:agritype/home/slivers/usesDesc.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  late double value1;
  late double value2;
  late double value3;
  Home({required this.value1, required this.value2, required this.value3});
  Widget appbar() {
    return SliverAppBar();
  }

  @override
  Widget build(BuildContext context) {
    String value;
    var condition1 = (value1 >= 85 &&
        value1 <= 100 &&
        value2 >= 0 &&
        value2 <= 15 &&
        value3 >= 0 &&
        value3 <= 10);
    var condition2 = (value1 >= 70 &&
        value1 <= 90 &&
        value2 >= 0 &&
        value2 <= 30 &&
        value3 >= 0 &&
        value3 <= 15);
    var condition3 = (value1 >= 42 &&
        value1 <= 85 &&
        value2 >= 0 &&
        value2 <= 50 &&
        value3 >= 0 &&
        value3 <= 20);
    var condition4 = (value1 >= 23 &&
        value1 <= 52 &&
        value2 >= 28 &&
        value2 <= 50 &&
        value3 >= 7 &&
        value3 <= 27);
    var condition5 = (value1 >= 0 &&
        value1 <= 50 &&
        value2 >= 50 &&
        value2 <= 88 &&
        value3 >= 0 &&
        value3 <= 27);
    var condition6 = (value1 >= 0 &&
        value1 <= 20 &&
        value2 >= 80 &&
        value2 <= 100 &&
        value3 >= 0 &&
        value3 <= 12);
    var condition7 = (value1 >= 45 &&
        value1 <= 80 &&
        value2 >= 0 &&
        value2 <= 28 &&
        value3 >= 20 &&
        value3 <= 35);
    var condition8 = (value1 >= 20 &&
        value1 <= 45 &&
        value2 >= 15 &&
        value2 <= 52 &&
        value3 >= 27 &&
        value3 <= 40);
    var condition9 = (value1 >= 0 &&
        value1 <= 20 &&
        value2 >= 40 &&
        value2 <= 73 &&
        value3 >= 27 &&
        value3 <= 40);
    var condition10 = (value1 >= 45 &&
        value1 <= 65 &&
        value2 >= 0 &&
        value2 <= 20 &&
        value3 >= 35 &&
        value3 <= 55);
    var condition11 = (value1 >= 0 &&
        value1 <= 20 &&
        value2 >= 40 &&
        value2 <= 60 &&
        value3 >= 40 &&
        value3 <= 60);
    var condition12 = (value1 >= 0 &&
        value1 <= 45 &&
        value2 >= 0 &&
        value2 <= 40 &&
        value3 >= 40 &&
        value3 <= 100);

    return Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            if (condition1) ...[
              SAppBar(
                image:
                    "https://c.pxhere.com/photos/c4/74/sand_beach_desert_sandy-702001.jpg!d",
                imageText: "Sand Soil",
              ),
              Composition(),
              SpacerProvide(),
              PercentIndicator(value1: value1, value2: value2, value3: value3),
              SpacerProvide(),
              Smain(header: "Sand Soil"),
              Desc(
                  desc:
                      "Sandy soil is also called light soil. Generally, sandy soil is composed of 35% sand and less than 15% silt and clay. Sand is mainly small pieces of eroded rocks that have a gritty texture. In sandy soils, most soil pore diameters are larger than 2 mm."),
              SpacerProvide(),
              Properties(property: "Properties of Sand Soil "),
              PropertyDesc(
                  propertyDesc:
                      "\u2022 Sandy soil is less fertile as it contains less humus. \n\u2022 Sandy soils have the fastest and greatest water drainage, and the least water retention.\n\u2022 Sandy soil is well-aerated and has low water absorption.\n\u2022 Sandy soil particles are weakly compacted (loose)"),
              SpacerProvide(),
              Uses(uses: "Uses of Sand Soil"),
              UsesDesc(
                usesDesc:
                    "Sandy soils are generally dry, nutrient-dense, and fast-draining. It is used for planting and cultivation. For useful vegetables like potatoes, grams, tomatoes, etc., a minimum percentage of this soil is required for a given period. The percentage varies from vegetable to vegetable. The sandy soil also provides good land for the farmers to collect the fallen nuts.",
              )
            ] else if (condition2) ...[
              SAppBar(
                image:
                    "https://www.worldatlas.com/r/w960-q80/upload/33/45/4c/sandy-loam-soil.jpg",
                imageText: "Loamy Sand Soil",
              ),
              Composition(),
              SpacerProvide(),
              PercentIndicator(value1: value1, value2: value2, value3: value3),
              SpacerProvide(),
              Smain(header: "Loamy Sand Soil"),
              Desc(
                  desc:
                      "Loamy sand is a type of soil that is made up of a mixture of sand, clay, and organic matter. This type of soil is known for being easy to work with and being able to hold moisture and nutrients well. Some of the plants that grow best in loamy sand are vegetables, fruits, and herbs."),
              SpacerProvide(),
              Properties(property: "Properties of Loam Sandy Soil "),
              PropertyDesc(
                  propertyDesc:
                      "\u2022 Loamy soil contains equal amounts of the mineral components.\n\u2022 Loamy sand contains 70 to 90 percent sand, 0 to 30 percent silt and 0 to 15 percent clay."),
              SpacerProvide(),
              Uses(uses: "Uses of Loamy Sand Soil"),
              UsesDesc(
                usesDesc:
                    "Tomatoes, peppers, green beans, cucumbers, onions, and lettuce are just a few of the many vegetables that thrive in a loamy soil. The Loamy soil is ideal for growing wheat, sugarcane, cotton, jute, pulses, and oilseeds, among other crops.",
              )
            ] else if (condition3) ...[
              SAppBar(
                image:
                    "https://www.tinyplantation.com/wp-content/uploads/2017/09/What-is-sandy-loam-02.jpg",
                imageText: "Sandy Loam Soil",
              ),
              Composition(),
              SpacerProvide(),
              PercentIndicator(value1: value1, value2: value2, value3: value3),
              SpacerProvide(),
              Smain(header: "Sandy Loam Soil"),
              Desc(
                  desc:
                      "Sandy loam is typically made up of sand and a varying amount of silt and clay. More often, the sand particles are more solid and larger than all the other particles included in the mixture, allowing more room for water and air to freely move through it. The clay and sediment in the mixture provide for fertility and structure. Sandy loams differ in appearance and texture depending on the amount and size of the sand in the mixture."),
              SpacerProvide(),
              Properties(property: "Properties of Sandy Loam Soil "),
              PropertyDesc(
                  propertyDesc:
                      "\u2022 Sandy Loam Soil holds its shape but breaks apart when compressed. \n\u2022 Sandy Loam Soil is less acidic and more alkaline.\n\u2022 Sandy Loam Soil is reddish-brown\n\u2022 Sandy Loam Soil cannot hold water; they drain the excess water in them, resulting in insufficient nutrition in plants, causing death. Frequent fertilization and excess watering are needed to boost plant growth.\n\u2022Sandy Loam Soil is classified into three types; fine sandy loam, sandy loam, and coarse Sandy loam."),
              SpacerProvide(),
              Uses(uses: "Uses of Sandy Loam Soil"),
              UsesDesc(
                usesDesc:
                    "Sandy loam is best for plants that require more soil drainage than regular plants. This type of soil is easy to till and can quickly drain excess water. This in turn lessens the likelihood of plant rot or growth of diseases or fungus that can badly affect the growth of the plant.",
              )
            ] else if (condition4) ...[
              SAppBar(
                image:
                    "https://image.freepik.com/free-photo/fertile-loam-soil-suitable-planting_38663-516.jpg",
                imageText: "Loam Soil",
              ),
              Composition(),
              SpacerProvide(),
              PercentIndicator(value1: value1, value2: value2, value3: value3),
              SpacerProvide(),
              Smain(header: "Loam Soil"),
              Desc(
                  desc:
                      "Loam soils generally contain more nutrients, moisture, and humus than sandy soils, have better drainage and infiltration of water and air than silt- and clay-rich soils, and are easier to till than clay soils. In fact, the primary definition of loam is soils containing humus (organic content) with no mention of particle size or texture, and this definition is used by many gardeners. The different types of loam soils each have slightly different characteristics, with some draining liquids more efficiently than others. The soil's texture, especially its ability to retain nutrients and water, are crucial. Loam soil is suitable for growing most plant varieties."),
              SpacerProvide(),
              Properties(property: "Properties of Loam Soil "),
              PropertyDesc(
                  propertyDesc:
                      "\u2022 loam soils often have higher levels of nutrients, moisture, and humus.  \n\u2022  They also have greater air and water infiltration and drainage than silt and clay-rich soils and are simpler to till than clay soils."),
              SpacerProvide(),
              Uses(uses: "Uses of Loam Soil"),
              UsesDesc(
                usesDesc:
                    "Because loam contains the right proportions of clay, sand, and silt, it is the best soil type for construction. It strikes the perfect balance between all of their best attributes to support a foundation. Loam typically responds effectively to the presence of water and does not radically change, grow, or contract. Alluvial, loam, sandy loam, and sandy clay loam have safe bearing capacities of between 80 to 270kN/m2 respectively.",
              )
            ] else if (condition5) ...[
              SAppBar(
                image:
                    "https://i.pinimg.com/564x/aa/fd/20/aafd2083762dc16bd87ca4550b4b5955.jpg",
                imageText: "Silty Loam Soil",
              ),
              Composition(),
              SpacerProvide(),
              PercentIndicator(value1: value1, value2: value2, value3: value3),
              SpacerProvide(),
              Smain(header: "Silty Loam Soil"),
              Desc(
                  desc:
                      "Silt loam refers to soil having a moderate amount of fine sand and only a small amount of clay; over half of the particles are of the size called silt. When dry, a silt loam appears cloddy, but the lumps can be broken readily. When pulverized, it feels soft and floury. When wet, the soil runs together readily and puddles."),
              SpacerProvide(),
              Properties(property: "Properties of Silty Loam Soil "),
              PropertyDesc(
                  propertyDesc:
                      "\u2022 Silty loam soil is a mixture of sand, silt and clay, which gives it a balanced texture that is great for growing plants.\n\u2022 They can absorb more sunlight.\n\u2022 Few particles are of the size of silt.\n\u2022 It has good water retention, but it also drains well, which helps prevent waterlogging"),
              SpacerProvide(),
              Uses(uses: "Uses of Silty Loam Soil"),
              UsesDesc(
                  usesDesc:
                      "Silt loam soil is great for growing a wide variety of crops, including fruits, vegetables, and grains. Its balanced texture allows for good drainage and water retention, which helps plants grow strong and healthy..")
            ] else if (condition6) ...[
              SAppBar(
                image:
                    "https://getlawnstar.com/wp-content/uploads/2019/05/silt-soil.jpg",
                imageText: "Silt Soil",
              ),
              Composition(),
              SpacerProvide(),
              PercentIndicator(value1: value1, value2: value2, value3: value3),
              SpacerProvide(),
              Smain(header: "Silt Soil"),
              Desc(
                  desc:
                      "Silt, which is known to have much smaller particles compared to sandy soil and is made up of rock and other mineral particles, which are smaller than sand and larger than clay. It is the smooth and fine quality of the soil that holds water better than sand.  Silt is easily transported by moving currents and it is mainly found near the river, lakes and other water bodies. The silt soil is more fertile compared to the other three types of soil. Therefore, it is also used in agricultural practices to improve soil fertility."),
              SpacerProvide(),
              Properties(property: "Properties of Silt Soil "),
              PropertyDesc(
                  propertyDesc:
                      "\u2022 It has medium aeration.\n\u2022 Silt can change landscapes. For example, silt settles in still water.\n\u2022 Silty soil is slippery when wet, not grainy or rocky.\n\u2022 Silt usually has a floury feel when dry, and lacks plasticity when wet.\n\u2022 They can be prone to erosion"),
              SpacerProvide(),
              Uses(uses: "Uses of Silt Soil"),
              UsesDesc(
                  usesDesc:
                      "Silt is used in agricultural practices to improve soil fertility. They are great for growing crops like cotton,rice and soybeans. It is also good for holding onto moisture, which helps plants grow")
            ] else if (condition7) ...[
              SAppBar(
                image:
                    "https://cf.shopee.ph/file/db5e4d8e044240446e54d8b35ae1f141_tn",
                imageText: "Sandy Clay Loam Soil",
              ),
              Composition(),
              SpacerProvide(),
              PercentIndicator(value1: value1, value2: value2, value3: value3),
              SpacerProvide(),
              Smain(header: "Sandy Clay Loam Soil"),
              Desc(
                  desc:
                      "Sandy clay loam soil is a type of soil that has a mixture of sand, clay, and silt particles. It has a texture that is similar to sandy soil, but it also has enough clay to help it retain water and nutrients. This makes it a good soil for growing a variety of crops."),
              SpacerProvide(),
              Properties(property: "Properties of Silt Soil "),
              PropertyDesc(
                  propertyDesc:
                      "\u2022 Sandy clay loam soil has a good balance of sand, clay, and silt particles, which makes it a fertile soil that's great for growing a variety of crops.\n\u2022 It has good water retention properties, but it also drains well, which helps prevent waterlogging.\n\u2022  It is also easy to till and work with, making it a popular soil for gardening and agriculture."),
              SpacerProvide(),
              Uses(uses: "Uses of Sandy Clay Loam Soil"),
              UsesDesc(
                  usesDesc:
                      "Sandy clay loam soil is great for growing a wide variety of crops, including fruits, vegetables, and grains. It has balanced texture allows for good drainage and water retention, which helps plants grow strong and healthy. It is also easy to till and work with, making it a popular soil for gardening and agriculture.")
            ] else if (condition8) ...[
              SAppBar(
                image: "http://images.wisegeek.com/crusty-soil.jpg",
                imageText: "Clay Loam Soil",
              ),
              Composition(),
              SpacerProvide(),
              PercentIndicator(value1: value1, value2: value2, value3: value3),
              SpacerProvide(),
              Smain(header: "Clay Loam Soil"),
              Desc(
                  desc:
                      "Clay loam is a soil mixture that contains more clay than other types of rock or minerals. A loam is a soil mixture that is named for the type of soil that is present in the greatest amount. The particles of clay are very small, which is one of its most important characteristics. For this reason, loams that contain a great deal of clay tend to be heavy, because they are so dense. While this soil type can be difficult to work with, it can also be improved to be a very good growing medium."),
              SpacerProvide(),
              Properties(property: "Properties of Clay Soil "),
              PropertyDesc(
                  propertyDesc:
                      "\u2022 Clay loam soil is a type of soil that has a balanced mixture of sand, silt, and clay particles.\n\u2022 It has good water retention properties, but it also drains well, which helps prevent waterlogging.\n\u2022  It is also a fertile soil that's great for growing a variety of crops.\n\u2022 It can be difficult to work with because it can become compacted easily, which can make it hard for plant roots to penetrate."),
              SpacerProvide(),
              Uses(uses: "Uses of Clay Loam Soil"),
              UsesDesc(
                  usesDesc:
                      "Clay loam soil is great for growing a wide variety of crops, including fruits, vegetables, and grains. Its balanced texture allows for good drainage and water retention, which helps plants grow strong and healthy. It is also a popular soil for construction because it has good load-bearing properties and can be compacted to provide a stable foundation for buildings and roads.")
            ] else if (condition9) ...[
              SAppBar(
                image:
                    "https://thumbs.dreamstime.com/b/better-production-plants-loam-many-reasons-nutritious-healthy-mixture-characteristics-soil-moist-lose-fertile-full-118805315.jpg",
                imageText: "Silty Clay Loam Soil",
              ),
              Composition(),
              SpacerProvide(),
              PercentIndicator(value1: value1, value2: value2, value3: value3),
              SpacerProvide(),
              Smain(header: "Silty Clay Loam Soil"),
              Desc(
                  desc:
                      "Silty clay loam soil is a type of soil that has a balanced mixture of sand, silt, and clay particles, but it has a higher percentage of silt particles than clay loam soil. It has good water retention properties and is fertile, making it great for growing a variety of crops. However, it can be difficult to work with because it can become compacted easily, which can make it hard for plant roots to penetrate. It is also prone to erosion because of its high silt content."),
              SpacerProvide(),
              Properties(property: "Properties of Silty Clay Loam Soil "),
              PropertyDesc(
                  propertyDesc:
                      "\u2022 IT has good water retention properties.\n\u2022 It is prone to erosion because of its high silt content.\n\u2022  It is also a fertile soil that's great for growing a variety of crops."),
              SpacerProvide(),
              Uses(uses: "Uses of Silty Clay Loam Soil"),
              UsesDesc(
                  usesDesc:
                      "Silty clay loam soil is great for growing a wide variety of crops, including fruits, vegetables, and grains.It is also a popular soil for construction because it has good load-bearing properties and can be compacted to provide a stable foundation for buildings and roads.")
            ] else if (condition10) ...[
              SAppBar(
                image:
                    "https://qph.fs.quoracdn.net/main-qimg-680892037c4f0896bd530cbedfda3da5-c",
                imageText: "Sandy Clay Soil",
              ),
              Composition(),
              SpacerProvide(),
              PercentIndicator(value1: value1, value2: value2, value3: value3),
              SpacerProvide(),
              Smain(header: "Sandy Clay Soil"),
              Desc(
                  desc:
                      "Sandy clay soil is a type of soil that has a higher percentage of sand particles than clay particles. It is a well-draining soil that's good for growing drought-tolerant crops. However, it can be difficult to work with because it can become compacted easily, which can make it hard for plant roots to penetrate. It is also prone to erosion because of its high sand content."),
              SpacerProvide(),
              Properties(property: "Properties of Sandy Clay Soil "),
              PropertyDesc(
                  propertyDesc:
                      "\u2022 IT has good water retention and drainage properties.\n\u2022 It is prone to erosion because of its high sand content.\n\u2022  It has a balanced texture"),
              SpacerProvide(),
              Uses(uses: "Uses of Sandy Clay Soil"),
              UsesDesc(
                  usesDesc:
                      "Sandy clay soil is a type of soil that has a higher percentage of sand particles than clay particles. It is a well-draining soil that is good for growing drought-tolerant crops, such as cacti and succulents.It is also a popular soil for construction because it has good load-bearing properties and can be compacted to provide a stable foundation for buildings and roads.")
            ] else if (condition11) ...[
              SAppBar(
                image:
                    "https://cdn.wonderfuldiy.com/wp-content/uploads/2016/02/Silty-Soil.jpg",
                imageText: "Silty Clay Soil",
              ),
              Composition(),
              SpacerProvide(),
              PercentIndicator(value1: value1, value2: value2, value3: value3),
              SpacerProvide(),
              Smain(header: "Silty Clay Soil"),
              Desc(
                  desc:
                      "Silty clay is generally brownish gray, with soft and creamy texture, flow shape, rich in organic matter, and with clay content more than 50%. Silty clay is the bottom type with the finest material and the most wide distribution in the continental shelf area"),
              SpacerProvide(),
              Properties(property: "Properties of Silty Clay Soil "),
              PropertyDesc(
                  propertyDesc:
                      "\u2022 Silty clay soil is a type of soil that has a higher percentage of silt particles than sand or clay particles.\n\u2022 It has a smooth texture and is easy to work with, making it great for gardening and agriculture.\n\u2022  It has good water retention properties and is fertile, making it great for growing a variety of crops.\n\u2022 It can be difficult to work with because it can become compacted easily, which can make it hard for plant roots to penetrate.\n\u2022 It is also prone to erosion because of its high silt content."),
              SpacerProvide(),
              Uses(uses: "Uses of Silty Clay Soil"),
              UsesDesc(
                  usesDesc:
                      "Silty clay soil is great for growing a wide variety of crops, including fruits, vegetables, and grains. Its balanced texture allows for good drainage and water retention, which helps plants grow strong and healthy. It is also a popular soil for construction because it has good load-bearing properties and can be compacted to provide a stable foundation for buildings and roads.")
            ] else if (condition12) ...[
              SAppBar(
                image:
                    "https://horticulture.co.uk/wp-content/uploads/2021/06/plantsforclay-header-1600x1063.jpg",
                imageText: "Clay Soil",
              ),
              Composition(),
              SpacerProvide(),
              PercentIndicator(value1: value1, value2: value2, value3: value3),
              SpacerProvide(),
              Smain(header: "Clay Soil"),
              Desc(
                  desc:
                      "Clay soil is soil that is comprised of very fine mineral particles and not much organic material. The resulting soil is quite sticky since there is not much space between the mineral particles, and it does not drain well at all. Soil that consists of over 50 percent clay particles is referred to as “heavy clay.”"),
              SpacerProvide(),
              Properties(property: "Properties of Clay Soil "),
              PropertyDesc(
                  propertyDesc:
                      "\u2022 Clay soil retains moisture well because of its density.\n\u2022 It is more nutrient-rich than other soil types. The reason for this is that the particles that make up clay soil are negatively charged, which means they attract and hold positively charged particles, such as calcium, potassium, and magnesium\n\u2022  They provide porosity, aeration, and water retention and are a reservoir of potassium oxide, calcium oxide, and even nitrogen."),
              SpacerProvide(),
              Uses(uses: "Uses of Clay Soil"),
              UsesDesc(
                  usesDesc:
                      "Clay soil is used in pottery. As building materials, bricks (baked and as adobe) have been used in construction since earliest time. Impure clays may be used to make bricks, tile, and the cruder types of pottery, while kaolin, or china clay, is required for the finer grades of ceramic materials. Another major use of kaolin is as paper coating and filler. Certain clays known as fuller's s earth have long been used in wool scouring. In rubber compounding, the addition of clay increases resistance to wear and helps eliminate molding troubles.")
            ] else ...[
              SAppBar(
                image: "https://wallpapercave.com/wp/wp2807573.jpg",
                imageText: "",
              ),
              Composition(),
              SpacerProvide(),
              PercentIndicator(value1: value1, value2: value2, value3: value3),
              SpacerProvide(),
              Smain(
                  header:
                      "Unfortunately, We couldn't find a soil with such composition :(. Sorry for the inconvenience"),
              Desc(desc: ""),
              SpacerProvide(),
              Properties(property: ""),
              PropertyDesc(propertyDesc: ""),
              SpacerProvide(),
              Uses(uses: ""),
              UsesDesc(usesDesc: "")
            ]
          ],
        ));
  }
}
