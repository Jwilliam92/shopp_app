
import 'package:flutter/material.dart';

class Badgee extends StatelessWidget {
  final Widget child;
  final String value;
  final Color? color;
  const Badgee({super.key, required this.child, required this.value, this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 4,
          top: 2,
          child: Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 229, 147, 103),
            ),
            constraints: const BoxConstraints(
              minWidth: 16,
              minHeight: 16,
            ),
            alignment: Alignment.center,
            child: Center(
              child: Text(value,
              style: const TextStyle(
                fontSize: 8,
                color: Colors.white
              ),
              ),
            ),
          )
    )],
    );
  }
}
