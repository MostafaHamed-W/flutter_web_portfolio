import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/sizes.dart';
import 'package:web_portfolio/views/navigation_bar/widgets/navigation_bar_item.dart';
import 'package:web_portfolio/views/portfolio/portfolio_view.dart';

class NavigationBarDesktopView extends StatelessWidget {
  const NavigationBarDesktopView({
    super.key,
    required this.isSmall,
  });

  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    final navigationItems = context.watch<List<NavigationItem>>();
    final scrollController = context.watch<ScrollController>();
    return SizedBox(
      height: Sizes.navBarHeight,
      width: Sizes.defaultWidth,
      // color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          children: [
            Image.asset(
              'assets/images/name.webp',
              height: 60,
              width: 60,
            ),
            const Spacer(),
            for (var item in navigationItems)
              NavigationBarItem(
                  onTap: () {
                    scrollController.animateTo(
                      item.position,
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.easeInOut,
                    );
                  },
                  text: item.text,
                  isSmall: isSmall),
            const SizedBox(width: 20),
            HireMeButton(isSmall: isSmall),
          ],
        ),
      ),
    );
  }
}
