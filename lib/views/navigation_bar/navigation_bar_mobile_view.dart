import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            SvgPicture.asset(
              'assets/images/2.svg',
              height: 40,
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
