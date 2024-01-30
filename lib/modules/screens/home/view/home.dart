import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xfffe8d15),
              Color(0xff000000),
              Color(0xff000000),
              Color(0xff000000),
              Color(0xffc51605),
            ],
          ),
          // image: DecorationImage(
          //   image: const AssetImage('lib/assets/background.png'),
          //   fit: BoxFit.cover,
          //   colorFilter: ColorFilter.mode(
          //     Colors.black.withOpacity(0.5),
          //     BlendMode.dstATop,
          //   ),
          // ),
        ),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 100,
              sigmaY: 100,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: h / 40,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: h / 35,
                          child: const Image(
                            image: AssetImage("lib/assets/tune.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: w / 50,
                        ),
                        const Text(
                          "My Todo's",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: h / 12,
                          width: w / 5.5,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                          ),
                          child: const Image(
                            image: NetworkImage(
                              'https://i.pinimg.com/originals/7d/37/12/7d371265b56e9e33ab1063d3d23eb026.png',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w / 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: h / 50,
                            ),
                            const Text(
                              'Hi Good Morning',
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 2,
                              ),
                            ),
                            const Text(
                              'Kirtan',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                letterSpacing: 2,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      SizedBox(
                        height: h / 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'create');
                        },
                        child: Container(
                          height: h / 4,
                          width: w / 1.2,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                            ),
                            // image: const DecorationImage(
                            //   image: AssetImage('lib/assets/watch.png'),
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                          child: Container(
                            width: w / 2,
                            height: h / 4,
                            decoration: const BoxDecoration(
                              // border:
                              //     Border.all(color: Colors.white, width: 2),
                              // color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "Create Schedule",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h / 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'view');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: w / 1.4,
                          height: h / 4,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "View Schedule",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
