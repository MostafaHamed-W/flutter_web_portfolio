import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.onTap,
    required this.text,
    this.isSmall = false,
  });

  final void Function()? onTap;
  final String text;
  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: InkWell(
        mouseCursor: WidgetStateMouseCursor.clickable,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: isSmall ? 13 : 18),
        ),
      ),
    );
  }
}
