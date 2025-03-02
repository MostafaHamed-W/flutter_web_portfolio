// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// import 'package:url_launcher/url_launcher_string.dart';
// import 'package:web_portfolio/utils/colors.dart';
// import 'package:web_portfolio/utils/hover_extensions.dart';
// import 'package:web_portfolio/views/experience/widgets/experience_container.dart';
// import 'package:webfeed/domain/rss_item.dart';

// class BlogCard extends StatelessWidget {
//   const BlogCard({
//     super.key,
//     this.isMobile = false,
//     this.article,
//   });

//   final bool isMobile;
//   final RssItem? article;

//   @override
//   Widget build(BuildContext context) {
//     final content = removeAllHtmlTags(article?.content?.value ?? '');
//     return InkWell(
//       highlightColor: Colors.transparent,
//       hoverColor: Colors.transparent,
//       splashColor: Colors.transparent,
//       onTap: () => launchUrlString(article?.link ?? ''),
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15.0),
//         ),
//         elevation: 3.0,
//         margin: const EdgeInsets.all(8),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
//                 color: AppColors.kPrimaryColor,
//               ),
//               width: double.infinity,
//               padding: EdgeInsets.symmetric(vertical: isMobile ? 20 : 40, horizontal: 8),
//               child: Text(
//                 article?.title ?? '',
//                 style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.black),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const SizedBox(height: 8),
//                   Text(
//                     convertDate(article?.pubDate ?? DateTime.now()),
//                     style: textStyle(
//                       isGrey: true,
//                       isBold: false,
//                       fontSize: 15,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     content,
//                     maxLines: 3,
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ).moveUpHover,
//     );
//   }
// }

// String removeAllHtmlTags(String htmlText) {
//   RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);

//   return htmlText.replaceAll(exp, '');
// }

// String convertDate(DateTime date) => DateFormat('d MMMM yyyyy').format(date);
