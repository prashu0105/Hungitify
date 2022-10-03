import 'package:Hungitify/CommanLib/Navigator.dart';
import 'package:Hungitify/CommanLib/Theme.dart';
import 'package:Hungitify/Screen/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final _advancedDrawerController = AdvancedDrawerController();
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
                'Profile',
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
            body: Container(
              height: h * 0.9,
              width: w,
              color: HungitColor.HungitCreme,
              child: Column(
                children: [
                  Container(
                    height: h * 0.2,
                    width: w * 0.9,
                    margin: EdgeInsets.only(top: h * 0.02),
                    decoration: BoxDecoration(
                        color: HungitColor.HungitWhite,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: w * 0.2,
                          width: w * 0.2,
                          margin:
                              EdgeInsets.only(top: h * 0.02, left: w * 0.04),
                          decoration: BoxDecoration(
                              color: HungitColor.HungitWhite,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset("assets/images/Logo.png"),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(left: w * 0.04, top: h * 0.02),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: h * 0.028,
                                width: w * 0.6,
                                // color: Colors.red,
                                child: Text(
                                  "Prassana Kudle",
                                  overflow: TextOverflow.ellipsis,
                                  style: HungitStyle.HungitNormalTextBlack,
                                ),
                              ),
                              Container(
                                height: h * 0.028,
                                width: w * 0.6,
                                margin: EdgeInsets.only(top: h * 0.012),
                                child: Text(
                                  "Prassana.kudle12345@gmail.com",
                                  style: HungitStyle.HungitNormalTextBlack,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Divider(
                                thickness: 0.5,
                                color: HungitColor.HungitBlack,
                              ),
                              Container(
                                height: h * 0.028,
                                width: w * 0.6,
                                child: Text(
                                  "8602192811",
                                  style: HungitStyle.HungitNormalTextBlack,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      CustomNavigator().navigateTo(
                          context: context, routeName: '/changepassword');
                    },
                    child: Container(
                      height: h * 0.06,
                      width: w * 0.9,
                      margin: EdgeInsets.only(top: h * 0.03),
                      decoration: BoxDecoration(
                        color: HungitColor.HungitWhite,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: w * 0.04),
                            child: Text(
                              "Change Password",
                              style:
                                  HungitStyle.HungitSubHeadTextBlack.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: w * 0.04),
                            // ignore: prefer_const_constructors
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      CustomNavigator()
                          .navigateTo(context: context, routeName: '/order');
                    },
                    child: Container(
                      height: h * 0.06,
                      width: w * 0.9,
                      margin: EdgeInsets.only(top: h * 0.03),
                      decoration: BoxDecoration(
                        color: HungitColor.HungitWhite,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: w * 0.04),
                            child: Text(
                              "Orders",
                              style:
                                  HungitStyle.HungitSubHeadTextBlack.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: w * 0.04),
                            // ignore: prefer_const_constructors
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
