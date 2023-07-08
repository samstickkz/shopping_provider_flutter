import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../shared/appstyle.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: const BoxDecoration(color: Colors.black),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Samuel Joseph',
                      style: appstyle(42, Colors.white, FontWeight.w500)),
                  Text('Stores',
                      style: appstyle(40, Colors.white, FontWeight.w500)),
                  TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Colors.pink,
                      controller: _tabController,
                      isScrollable: true,
                      labelColor: Colors.white,
                      labelStyle: appstyle(24, Colors.white, FontWeight.w500),
                      unselectedLabelColor: Colors.grey,
                      tabs: const [
                        Tab(
                          text: 'Home',
                        ),
                        Tab(
                          text: 'Search',
                        ),
                        Tab(
                          text: 'Profile',
                        )
                      ]),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.265),
            child: Container(
              padding: const EdgeInsets.only(
                left: 12,
              ),
              child: TabBarView(controller: _tabController, children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
                      height: MediaQuery.of(context).size.height * 0.405,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width * 0.6,
                                color: Colors.red,
                              ),
                            );
                          }),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("latest post",
                                style: appstyle(
                                    24, Colors.black, FontWeight.w500)),
                            Row(
                              children: [
                                Text("see all",
                                    style: appstyle(
                                        24, Colors.black, FontWeight.w500)),
                                const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.black,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.12,
                                width: MediaQuery.of(context).size.width * 0.28,

                              ),
                            );
                          }),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
                      height: MediaQuery.of(context).size.height * 0.405,
                      decoration: const BoxDecoration(color: Colors.red),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
                      height: MediaQuery.of(context).size.height * 0.405,
                      decoration: const BoxDecoration(color: Colors.purple),
                    ),
                  ],
                ),
              ]),
            ),
          )
        ],
      ),
    ));
  }
}
