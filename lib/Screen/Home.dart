// ignore_for_file: file_names

import 'package:Hungitify/CommanLib/CommanComponents.dart';
import 'package:Hungitify/CommanLib/Navigator.dart';
import 'package:Hungitify/CommanLib/Theme.dart';
import 'package:Hungitify/Screen/Profile.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _advancedDrawerController = AdvancedDrawerController();
  var selectedIndex = 0;
  DateTime? currentBackPressTime;
  List Pages = [];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: AdvancedDrawer(
          backdropColor: HungitColor.HungitYellow,
          controller: _advancedDrawerController,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
          animateChildDecoration: true,
          rtlOpening: false,
          // openScale: 1.0,
          disabledGestures: false,
          childDecoration: const BoxDecoration(
            // NOTICE: Uncomment if you want to add shadow behind the page.
            // Keep in mind that it may cause animation jerks.
            // boxShadow: <BoxShadow>[
            //   BoxShadow(
            //     color: Colors.black12,
            //     blurRadius: 0.0,
            //   ),
            // ],
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
          child: Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: HungitColor.HungitYellow,
              centerTitle: true,
              title: const Text(
                'Home',
                style: HungitStyle.HungitSubHeadTextBlack,
              ),
              leading: IconButton(
                onPressed: _handleMenuButtonPressed,
                icon: ValueListenableBuilder<AdvancedDrawerValue>(
                  valueListenable: _advancedDrawerController,
                  builder: (_, value, __) {
                    return AnimatedSwitcher(
                      duration: Duration(milliseconds: 250),
                      child: Icon(
                        value.visible ? Icons.clear : Icons.menu,
                        key: ValueKey<bool>(value.visible),
                      ),
                    );
                  },
                ),
              ),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  // height: h * 0.9,
                  width: w,
                  color: HungitColor.HungitCreme,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: h * 0.02),
                        child: CarouselSlider(
                            items: [
                              Container(
                                height: h * 0.1,
                                width: w,
                                child: Image.asset("assets/images/1.png",
                                    fit: BoxFit.fill),
                                // child: Image.asset(
                                //   "assets/images/Slide1.jpg",
                                //   fit: BoxFit.fill,
                                // ),
                              ),
                              Container(
                                height: h * 0.1,
                                width: w,
                                // color: Colors.blue,
                                child: Image.asset(
                                  "assets/images/2.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                height: h * 0.1,
                                width: w,
                                child: Image.asset(
                                  "assets/images/3.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                height: h * 0.1,
                                width: w,
                                child: Image.asset(
                                  "assets/images/4.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                height: h * 0.1,
                                width: w,
                                child: Image.asset(
                                  "assets/images/5.jpg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                            options: CarouselOptions(
                                autoPlay: true,
                                viewportFraction: 1.0,
                                autoPlayAnimationDuration:
                                    Duration(seconds: 3))),
                      ),
                      Container(
                        // height: h * 0.56,
                        // width: w,
                        margin: EdgeInsets.only(top: h * 0.04),
                        child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 250,
                                    childAspectRatio: 6 / 9,
                                    crossAxisSpacing: 4,
                                    mainAxisSpacing: 8),
                            itemCount: 50,
                            itemBuilder: (BuildContext ctx, index) {
                              return InkWell(
                                onTap: () {
                                  CustomNavigator().navigateTo(
                                      context: context, routeName: "/itemdesc");
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: w * 0.02, right: w * 0.02),
                                  decoration: BoxDecoration(
                                      color: HungitColor.HungitWhite,
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          style: HungitStyle
                                                  .HungitNormalTextBlack
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
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
                                              style: HungitStyle
                                                      .HungitNormalTextBlack
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Container(
                                            height: h * 0.03,
                                            width: w * 0.1,
                                            margin:
                                                EdgeInsets.only(top: h * 0.01),
                                            // color: Colors.red,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      HungitColor.HungitYellow,
                                                ),
                                                Text("5"),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Center(
                                        child: Container(
                                          height: h * 0.04,
                                          width: w * 0.3,
                                          margin:
                                              EdgeInsets.only(top: h * 0.01),
                                          decoration: BoxDecoration(
                                            color: HungitColor.HungitYellow,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Add",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          drawer: SafeArea(
            child: Container(
              child: ListTileTheme(
                textColor: Colors.black,
                iconColor: Colors.black,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 128.0,
                      height: 128.0,
                      margin: const EdgeInsets.only(
                        top: 24.0,
                        bottom: 64.0,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        // color: Colors.black26,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/Logo.png',
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        CustomNavigator()
                            .navigateTo(context: context, routeName: '/home');
                      },
                      leading: Icon(Icons.home),
                      title: Text('Home'),
                    ),
                    ListTile(
                      onTap: () {
                        CustomNavigator().navigateTo(
                            context: context, routeName: '/category');
                      },
                      leading: Icon(Icons.auto_awesome_mosaic_rounded),
                      title: Text('Categories'),
                    ),
                    ListTile(
                      onTap: () {
                        CustomNavigator().navigateTo(
                            context: context, routeName: '/cartlist');
                      },
                      leading: Icon(Icons.shopping_cart_rounded),
                      title: Text('Cart List'),
                    ),
                    ListTile(
                      onTap: () {
                        CustomNavigator().navigateTo(
                            context: context, routeName: '/profile');
                      },
                      leading: Icon(Icons.account_circle_rounded),
                      title: Text('Profile'),
                    ),
                    ListTile(
                      onTap: () {
                        CustomNavigator().navigateTo(
                            context: context, routeName: '/favorites');
                      },
                      leading: Icon(Icons.favorite),
                      title: Text('Favourites'),
                    ),
                    ListTile(
                      onTap: () {
                        CustomNavigator()
                            .navigateTo(context: context, routeName: '/login');
                      },
                      leading: Icon(Icons.logout),
                      title: Text('Logout'),
                    ),
                    Spacer(),
                    DefaultTextStyle(
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white54,
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 16.0,
                        ),
                        child: Text('Terms of Service | Privacy Policy'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
