import 'package:flutter/material.dart';
import 'package:innova_task/ui_screen/utils/style.dart';
import 'package:innova_task/ui_screen/widgets/custom_circle_container.dart';
import 'package:innova_task/ui_screen/widgets/details_page_banner.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key, required this.tagId, required this.image}) : super(key: key);
  final String tagId;
  final String image;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int selectedIndex = 40;

  void _onIndexTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
              child: DetailsPageBanner(),
            ),
            //Image.asset("assets/images/details_image.png"),
            Hero(
                tag: widget.tagId,
                child: Image.asset(widget.image,height: 200,width: 150)),
            SizedBox(
              height: 416,
              width: double.infinity,
              child: Card(
                elevation: 0,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                )),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Best Seller",
                        style: TextStyle(
                          fontSize: textFontSize,
                          fontWeight: regularFontWeight,
                          color: kBlueColor,
                          letterSpacing: 1,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          "Nike Air Jordan",
                          style: TextStyle(
                            fontSize: textFontSize,
                            fontWeight: mediumFontWeight,
                            color: kTextColor,
                          ),
                        ),
                      ),
                      const Text(
                        "\$967.800",
                        style: TextStyle(
                          fontSize: textFontSize,
                          fontWeight: mediumFontWeight,
                          color: kTextColor,
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Text(
                        "Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike....",
                        style: TextStyle(
                          fontSize: textSmallFontSize,
                          fontWeight: regularFontWeight,
                          color: smallTextColor,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const Text(
                        "Gallery",
                        style: TextStyle(
                          fontSize: titleFontSize,
                          fontWeight: mediumFontWeight,
                          color: kTextColor,
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              color: Colors.black12,
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/images/shoe_1.png",
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16.0,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              color: Colors.black12,
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/images/shoe_1.png",
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16.0,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              color: Colors.black12,
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/images/shoe_1.png",
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Size",
                            style: TextStyle(
                              fontSize: titleFontSize,
                              fontWeight: mediumFontWeight,
                              color: kTextColor,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "EU",
                                style: TextStyle(
                                  fontSize: textSmallFontSize,
                                  fontWeight: regularFontWeight,
                                  color: kTextColor,
                                ),
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              Text(
                                "US",
                                style: TextStyle(
                                  fontSize: textSmallFontSize,
                                  fontWeight: regularFontWeight,
                                  color: kBlueColor,
                                ),
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              Text(
                                "UK",
                                style: TextStyle(
                                  fontSize: textSmallFontSize,
                                  fontWeight: regularFontWeight,
                                  color: kBlueColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int index = 38; index <= 43; index++)
                            CustomCircleContainer(
                              height: 50,
                              width: 50,
                              borderRadius: 25,
                              color: selectedIndex == index
                                  ? kBlueColor
                                  : kBlack12Color,
                              onTap: () {
                                _onIndexTapped(index);
                              },
                              child: Center(
                                child: Text(
                                  index.toString(),
                                  style: TextStyle(
                                    color: selectedIndex == index
                                        ? kWhiteColor
                                        : null,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Card(
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(
                                fontSize: textFontSize,
                                fontWeight: mediumFontWeight,
                                color: smallTextColor,
                              ),
                            ),
                            Text(
                              "\$967.800",
                              style: TextStyle(
                                fontSize: textFontSize,
                                fontWeight: titleFontWeight,
                                color: kTextColor,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(25, 45.0),
                                backgroundColor: const Color(0xff5b9ee1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.0))),
                            onPressed: () {},
                            child: const Text(
                              "Add to Cart",
                              style: TextStyle(
                                fontSize: textFontSize,
                                fontWeight: mediumFontWeight,
                                color: kWhiteColor,
                              ),
                            ))
                      ],
                    ),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
