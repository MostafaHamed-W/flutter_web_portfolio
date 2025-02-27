import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/helper.dart';
import 'package:web_portfolio/utils/hover_extensions.dart';
import 'package:web_portfolio/utils/sizes.dart';
import 'package:web_portfolio/views/footer/widgets/social_info.dart';
import 'package:web_portfolio/views/header/widgets/header_body.dart';

class HeaderDesktopView extends StatelessWidget {
  const HeaderDesktopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 950;
    final imageWidth = width * 0.47;
    return Container(
      decoration: getGraidentBackround(context),
      padding: kScreenPadding,
      height: 670,
      width: Sizes.defaultWidth,
      // color: Colors.white,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var social in socials)
                IconButton(
                  color: Colors.black,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  onPressed: () => launchUrlString(social.url),
                  icon: social.icon,
                ).moveUpHover,
            ],
          ),
          const SizedBox(width: 20),
          Expanded(
              child: HeaderBody(
            isSmall: isSmall,
          )),
          // const SizedBox(width: 50),
          Image.network(
            width: isSmall ? imageWidth : 450,
            height: 500, // Add a fixed height to prevent shifting
            personalNetworkPhoto,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const Center(child: CircularProgressIndicator());
            },
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error); // Placeholder if image fails to load
            },
          ),
          // const SizedBox(width: 40),
        ],
      ),
    );
  }
}
