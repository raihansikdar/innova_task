import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:innova_task/ui_screen/controller/drawer_controller.dart';
// import 'package:innova_task/ui_screen/screen/details_screen.dart';
// import 'package:innova_task/ui_screen/utils/style.dart';
// import 'package:innova_task/ui_screen/widgets/custom_circle_container.dart';
// import 'package:innova_task/ui_screen/widgets/home_page_banner.dart';
// import 'package:innova_task/ui_screen/widgets/popular_shoes_card.dart';

// class MainScreen extends GetView<MyDrawerController> {
//    MainScreen({Key? key}) : super(key: key);
//   List<Map<String,dynamic>> items = [
//     {"image":"assets/images/shoe_1.png","title":"Best Seller","name":"Nike Jordan","price":"\$493.00"},
//     {"image":"assets/images/shoe_1.png","title":"Best Seller","name":"Nike Air Max","price":"\$897.99"},
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.only(top: 8.0,left: 16.0,right: 16.0),
//             child: Column(
//               children: [
//                 HomePageBanner(controller: controller),
//                 const SizedBox(height: 20,),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Looking for shoes",
//                     hintStyle: const TextStyle(color: searchbarColor),
//                     prefixIcon: const Icon(Icons.search),
//                     fillColor: kWhiteColor,
//                     filled: true,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(32.0),
//                       borderSide: BorderSide.none,
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(32.0),
//                       borderSide: BorderSide.none,
//                     )
//                   ),
//                 ),
//                 const SizedBox(height: 24.0,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CustomCircleContainer(
//                       height: 50,
//                       width: 50,
//                       borderRadius: 25,
//                       color: kWhiteColor,
//                       onTap: () {  },
//                       child: Center(child: Image.asset("assets/logo/nike_logo.jpeg",width: 40,height: 40,)),
//                     ),

//                     CustomCircleContainer(
//                       height: 50,
//                       width: 50,
//                       borderRadius: 25,
//                       color: kWhiteColor,
//                       onTap: () {  },
//                       child: Center(child: Image.asset("assets/logo/puma_logo.png",width: 40,height: 40,)),
//                     ),

//                     CustomCircleContainer(
//                       height: 50,
//                       width: 50,
//                       borderRadius: 25,
//                       color: kWhiteColor,
//                       onTap: () {  },
//                       child: Center(child: Image.asset("assets/logo/under_armour_logo.png",width: 40,height: 40,)),
//                     ),

//                     CustomCircleContainer(
//                       height: 50,
//                       width: 50,
//                       borderRadius: 25,
//                       color: kWhiteColor,
//                       onTap: () {  },
//                       child: Center(child: Image.asset("assets/logo/adidas_logo.jpg",width: 40,height: 40,)),
//                     ),

//                     CustomCircleContainer(
//                       height: 50,
//                       width: 50,
//                       borderRadius: 25,
//                       color: kWhiteColor,
//                       onTap: () {  },
//                       child: Center(child: Image.asset("assets/logo/converse_logo.png",width: 40,height: 40,)),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 24.0,),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("Popular Shoes",
//                     style: TextStyle(
//                       fontSize: titleFontSize,
//                       fontWeight:mediumFontWeight,
//                       color: kTextColor,
//                     ),
//                     ),
//                     Text(
//                       "See all",
//                      style: TextStyle(
//                        fontSize: textSmallFontSize,
//                        fontWeight: regularFontWeight,
//                        color: kBlueColor,
//                      ),
//                     ),
//                   ],
//                 ),
//              const SizedBox(height: 10,),
//               SizedBox(
//                 height: 225,
//                 width: double.infinity,
//                 child: ListView.builder(
//                   shrinkWrap: true,
//                   primary: false,
//                   scrollDirection: Axis.horizontal,
//                     itemCount: items.length,
//                     itemBuilder: (context,index){
//                       return Padding(
//                         padding: const EdgeInsets.only(right: 12.0),
//                           child: PopularShoesCard(
//                             image: items[index]["image"],
//                             title: items[index]["title"],
//                             name: items[index]["name"],
//                             price: items[index]["price"],
//                             onTap: (){},
//                           ),
//                         );
//                     }
//                 ),
//               ),

//                 const SizedBox(height: 16.0,),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("New Arrivals",
//                       style: TextStyle(
//                         fontSize: titleFontSize,
//                         fontWeight:mediumFontWeight,
//                         color: kTextColor,
//                       ),
//                     ),
//                     Text(
//                       "See all",
//                       style: TextStyle(
//                         fontSize: textSmallFontSize,
//                         fontWeight: regularFontWeight,
//                         color: kBlueColor,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 8.0,),
//                 GestureDetector(
//                   onTap: (){
//                     Get.to(()=>DetailsScreen(),transition : Transition.rightToLeft);
//                   },
//                   child: Card(
//                     elevation: 0,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(24.0)
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         const Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Best Choice",
//                                 style: TextStyle(
//                                   fontSize: textFontSize,
//                                   fontWeight: regularFontWeight,
//                                   color: kBlueColor,
//                                   letterSpacing: 1,
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.symmetric(vertical: 8.0),
//                                 child: Text(
//                                   "Nike Air Jordan",
//                                   style: TextStyle(
//                                     fontSize: textFontSize,
//                                     fontWeight: mediumFontWeight,
//                                     color: kTextColor,

//                                   ),
//                                 ),
//                               ),
//                               Text(
//                                 "\$849.69",
//                                 style: TextStyle(
//                                   fontSize: textFontSize,
//                                   fontWeight: regularFontWeight,
//                                   color: kTextColor,

//                                 ),
//                               ),

//                             ],
//                           ),
//                         ),
//                         Image.asset("assets/images/shoe_1.png",height: 120,width: 120,)
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

