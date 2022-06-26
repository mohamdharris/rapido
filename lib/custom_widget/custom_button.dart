import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({Key? key, this.on_pressed, this.child})
      : super(key: key);
  final void Function()? on_pressed;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: on_pressed,
        child: child,
        style: OutlinedButton.styleFrom(
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ));
  }
}
