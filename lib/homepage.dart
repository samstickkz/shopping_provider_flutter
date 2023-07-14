import 'package:flutter/material.dart';
import 'package:online_shopping_app/controllers/mainscreen_provider.dart';
import 'package:online_shopping_app/view/cartpage.dart';
import 'package:online_shopping_app/view/home.dart';
import 'package:online_shopping_app/view/mainscreen.dart';
import 'package:online_shopping_app/view/profile.dart';
import 'package:online_shopping_app/view/search.dart';
import 'package:provider/provider.dart';
import 'bottomnav.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pageList = const [
    HomeMain(),
    SearchPage(),
    ProfilePage(),
    MainScreenPage(),
    cartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainscreenProvider>(
      builder: (context, mainscreenProvider, child) {
        return Scaffold(
          backgroundColor: const Color(0xFFE2E2E2),
          body: pageList[mainscreenProvider.pageIndex],
          bottomNavigationBar: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BottomNav(
                            onTap: () {
                              mainscreenProvider.setCurrentIndex = 0;
                            },
                            icon: mainscreenProvider.pageIndex == 0
                                ? Icons.home
                                : Icons.home_outlined),
                        BottomNav(
                            onTap: () {
                              mainscreenProvider.setCurrentIndex = 1;
                            },
                            icon: mainscreenProvider.pageIndex == 1
                                ? Icons.search
                                : Icons.face),
                        BottomNav(
                          onTap: () {
                            mainscreenProvider.setCurrentIndex = 2;
                          },
                          icon: mainscreenProvider.pageIndex == 2
                              ? Icons.add_circle
                              : Icons.add_circle_outline,
                        ),
                        BottomNav(
                          onTap: () {
                            mainscreenProvider.setCurrentIndex = 3;
                          },
                          icon: mainscreenProvider.pageIndex == 3
                              ? Icons.shopping_cart
                              : Icons.shopping_cart_outlined,
                        ),
                        BottomNav(
                            onTap: () {
                              mainscreenProvider.setCurrentIndex = 4;
                            },
                            icon: mainscreenProvider.pageIndex == 4
                                ? Icons.person
                                : Icons.person_outline)
                      ],
                    ),
                  ))),
        );
      },
    );
  }
}
