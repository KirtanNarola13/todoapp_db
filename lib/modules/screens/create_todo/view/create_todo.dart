import 'package:flutter/material.dart';

class CrateTodo extends StatelessWidget {
  const CrateTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: const AssetImage('lib/assets/background.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              flex: 6,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
