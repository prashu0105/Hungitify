import 'package:Hungitify/CommanLib/Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import '../CommanLib/Navigator.dart';

class CartList extends StatefulWidget {
  CartList({Key? key}) : super(key: key);

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
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
                'Cart List',
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
                children: [],
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
