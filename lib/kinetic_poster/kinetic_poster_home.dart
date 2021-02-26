import 'package:flutter/material.dart';
import 'dart:math' as math;

class KineticPosterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kinetic Poster',
      theme: ThemeData(
        primaryColor: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Inter',
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  final numberOfText = 20;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.forward(from: 0);
        }
      });
    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }
bool isOnRight(double rotation) =>math.cos(rotation)<0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ...List.generate(
              2*numberOfText,
              (index) {
                return AnimatedBuilder(
                  animation: _animationController,
                  child: LinearText(),
                  builder: (context, child) {
                    final rotation =
                        (_animationController.value * 2 * math.pi) +
                            (2 * math.pi * index / numberOfText);
                    if (isOnRight(rotation)) {
                      return Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(rotation)
                          ..translate(-60.0),
                        child: child,
                      );
                    } else {
                      return SizedBox.shrink();
                    }
                  },
                );
              },
            ),
            ...List.generate(
              2*numberOfText,
                  (index) {
                return AnimatedBuilder(
                  animation: _animationController,
                  child: LinearText(),
                  builder: (context, child) {
                    final rotation =
                        (_animationController.value * 2 * math.pi) +
                            (2 * math.pi * index / numberOfText);
                    if (!isOnRight(rotation)) {
                      return Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(rotation)
                          ..translate(-60.0),
                        child: child,
                      );
                    } else {
                      return SizedBox.shrink();
                    }
                  },
                );
              },
            ).reversed,
          ],
        ),
      ),
    );
  }
}

class LinearText extends StatelessWidget {
  final textChild = Text(
    'LINEAR',
    style: TextStyle(
      color: Colors.white,
      fontSize: 110,
      fontWeight: FontWeight.bold,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: textChild,
            // foregroundDecoration: BoxDecoration(
            //   gradient: LinearGradient(
            //       colors: [Colors.black, Colors.transparent],
            //       begin: Alignment.bottomCenter,
            //       end: Alignment.topCenter,
            //       stops: [0.2, 0.5]),
            // ),
          ),
          Opacity(opacity: 0, child: textChild)
        ],
      ),
    );
  }
}
