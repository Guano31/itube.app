import 'package:flutter/material.dart';

class box extends StatelessWidget {
  final Widget? child;

  const box({
    super.key,
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.lightBlue.shade500,
              blurRadius: 15,
              offset: const Offset(4, 4),
            ),
            BoxShadow(
              color: Colors.white,
              blurRadius: 15,
              offset: const Offset(-4, -4),
            ),
          ]),
      padding: const EdgeInsets.all(12),
      child: child,
    );
  }
}
