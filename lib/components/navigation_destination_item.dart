import 'package:flutter/material.dart';

class NavigationDestinationItem extends StatelessWidget {
  const NavigationDestinationItem({super.key, required this.label, required this.icon, required this.tintColor});

  final String label;
  final Widget icon;
  final Color tintColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DefaultSelectionStyle(selectionColor: tintColor, child: icon),
          const SizedBox(height: 4,),
          Text(label, style: Theme.of(context).textTheme.labelMedium)
        ],
      ),
    );
  }
}