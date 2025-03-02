import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/hover_extensions.dart';
import 'package:web_portfolio/utils/sizes.dart';
import 'package:web_portfolio/views/footer/widgets/social_info.dart';

class FooterMobileView extends StatelessWidget {
  const FooterMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final currentYear = DateTime.now().year;
    return Container(
      width: Sizes.defaultWidth,
      height: 150,
      padding: kScreenPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var social in socials)
                IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  onPressed: () => launchUrlString(social.url),
                  icon: social.icon,
                ).moveUpHover,
            ],
          ),
          Text('© Mostafa Hamed $currentYear'),
          InkWell(
            onTap: () => launchUrlString('https://github.com/MostafaHamed-W'),
            mouseCursor: WidgetStateMouseCursor.clickable,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            child: const Text(
              'See the source code',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
