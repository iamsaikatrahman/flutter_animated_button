import 'package:flutter/material.dart';
import 'package:flutter_animated_button/animation_bottom_navigation.dart';
import 'package:flutter_animated_button/widgets/confirm_animation.dart';

class ConfirmButton extends StatefulWidget {
  @override
  _ConfirmButtonState createState() => _ConfirmButtonState();
}

class _ConfirmButtonState extends State<ConfirmButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Button"),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedConfirmButton(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_)=> BottomBarNavigationPatternExample()));
            print("animated button pressed");
          },
          animationDuration: const Duration(milliseconds: 2000),
          initialText: "Confirm",
          finalText: "Submitted",
          iconData: Icons.check,
          iconSize: 32.0,
          buttonStyle: ConfirmButtonStyle(
            primaryColor: Colors.green.shade600,
            secondaryColor: Colors.white,
            elevation: 20.0,
            initialTextStyle: TextStyle(
              fontSize: 22.0,
              color: Colors.white,
            ),
            finalTextStyle: TextStyle(
              fontSize: 22.0,
              color: Colors.green.shade600,
            ),
            borderRadius: 10.0,
          ),
        ),
      ),
    );
  }
}
