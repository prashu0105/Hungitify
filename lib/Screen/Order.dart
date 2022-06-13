import 'package:Hungitify/CommanLib/Navigator.dart';
import 'package:flutter/material.dart';

import '../CommanLib/Theme.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: HungitColor.HungitYellow,
          centerTitle: true,
          title: const Text(
            'Order',
            style: HungitStyle.HungitSubHeadTextBlack,
          ),
          leading: IconButton(
              onPressed: () {
                CustomNavigator()
                    .navigateTo(context: context, routeName: '/profile');
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Container(
          height: h * 0.9,
          width: w,
          color: HungitColor.HungitCreme,
          child: Container(
            height: h * 0.56,
            width: w,
            margin: EdgeInsets.only(top: h * 0.04),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250,
                    childAspectRatio: 6 / 9,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 8),
                itemCount: 50,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                    onTap: () {
                      CustomNavigator()
                          .navigateTo(context: context, routeName: "/itemdesc");
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: w * 0.02, right: w * 0.02),
                      decoration: BoxDecoration(
                          color: HungitColor.HungitWhite,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/Tandoori.jpg",
                            height: h * 0.21,
                            width: h * 0.21,
                          ),
                          Container(
                            height: h * 0.03,
                            width: w * 0.4,
                            // color: Colors.red,
                            margin: EdgeInsets.only(left: w * 0.02),
                            child: Text(
                              "Tandoori Chiken",
                              style: HungitStyle.HungitNormalTextBlack.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: h * 0.03,
                                width: w * 0.3,
                                // color: Colors.red,
                                margin: EdgeInsets.only(
                                    left: w * 0.02, top: h * 0.01),
                                child: Text(
                                  "₹ 450",
                                  style: HungitStyle.HungitNormalTextBlack
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Container(
                                height: h * 0.03,
                                width: w * 0.1,
                                margin: EdgeInsets.only(top: h * 0.01),
                                // color: Colors.red,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: HungitColor.HungitYellow,
                                    ),
                                    Text("5"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
