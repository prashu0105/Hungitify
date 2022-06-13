import 'package:Hungitify/CommanLib/Navigator.dart';
import 'package:Hungitify/CommanLib/Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ItemDesc extends StatefulWidget {
  ItemDesc({Key? key}) : super(key: key);

  @override
  State<ItemDesc> createState() => _ItemDescState();
}

class _ItemDescState extends State<ItemDesc> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: h,
            width: w,
            color: HungitColor.HungitCreme,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/Tandoori.jpg",
                          height: w,
                          width: w,
                        ),
                        Positioned(
                          top: 12,
                          left: 12,
                          child: InkWell(
                            onTap: () {
                              CustomNavigator().navigateTo(
                                  context: context, routeName: "/home");
                            },
                            child: Container(
                              height: h * 0.05,
                              width: h * 0.05,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                      HungitColor.HungitBlack.withOpacity(0.5)),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: HungitColor.HungitWhite,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w * 0.04, top: h * 0.02),
                      child: Text(
                        "Tandoori Chicken....",
                        style: HungitStyle.HungitSubHeadTextBlack,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w * 0.04, top: h * 0.01),
                      child: Text("₹ 450",
                          style: HungitStyle.HungitNormalTextBlack),
                    ),
                    // Container(
                    //   height: h * 0.16,
                    //   width: w,
                    //   margin: EdgeInsets.only(left: w * 0.02, top: h * 0.02),
                    //   child: ListView.builder(
                    //       scrollDirection: Axis.horizontal,
                    //       itemCount: 20,
                    //       itemBuilder: (context, index) {
                    //         return Container(
                    //           height: h * 0.16,
                    //           width: w * 0.3,
                    //           margin: EdgeInsets.only(left: w * 0.02),
                    //           decoration: BoxDecoration(
                    //               color: Colors.white,
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(10))),
                    //         );
                    //       }),
                    // )
                  ],
                ),
                Positioned(
                  left: 0.0,
                  right: 0.0,
                  bottom: 0.0,
                  child: Container(
                    height: h * 0.1,
                    width: w,
                    color: HungitColor.HungitWhite,
                    child: Center(
                      child: Container(
                        height: h * 0.06,
                        width: w * 0.5,
                        decoration: BoxDecoration(
                          color: HungitColor.HungitYellow,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Center(
                          child: Text(
                            "Add for PickUp",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
