import 'package:flutter/material.dart';

class NavigationBarMobileView extends StatelessWidget {
  const NavigationBarMobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.white,
      height: 60,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Image.asset(
              'assets/images/name.webp',
              height: 40,
              width: 40,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
