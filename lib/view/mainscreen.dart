
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared/appstyle.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({super.key});

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

    SizedBox(
      height: MediaQuery.of(context).size.height,
      child:

      Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16,45,0,0),
            height: MediaQuery.of(context).size.height*0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/43391571.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    )
    );
  }
}
