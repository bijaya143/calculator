import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final desiredWidth = screenWidth * 0.4;
    final desiredHeight = screenHeight * 0.4;

    final desiredWidthForChild = desiredWidth * 0.3;
    final desiredHeightForChild = desiredHeight * 0.3;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: desiredHeight,
              width: double.infinity,
              color: Colors.amber,
              child: const Text('I am first'),
            ),
            Positioned(
                top: 1,
                right: 1,
                child: Container(
                  height: desiredHeightForChild,
                  width: desiredWidthForChild,
                  color: Colors.lightGreen,
                  child: const Text('I am second'),
            )),
            Positioned(
                bottom: -20,
                left: 400 / 2 - 50,
                child: Container(
                  height: desiredHeightForChild,
                  width: desiredWidthForChild,
                  color: Colors.lightGreen,
                  child: const Text('I am third'),
                ))
          ],
        ),
      ),
    );
  }
}
