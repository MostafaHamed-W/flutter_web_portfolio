import 'package:flutter/material.dart';
import 'package:web_portfolio/components/desktop_view_builder.dart';
import 'package:web_portfolio/views/experience/widgets/custom_experience_card.dart';
import 'package:web_portfolio/views/skills/widgets/skills_custom_column.dart';

class ExperienceDesktopView extends StatelessWidget {
  const ExperienceDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const DesktopViewBuilder(
      mainText: 'My Qualifications',
      subText: 'Awesome Journey',
      children: [
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 80),
                child: CustomSplitColumn(
                  categoryName: 'Education & Trainings',
                  icon: Icon(Icons.science),
                  children: [
                    CustomExperienceCard(
                      date: 'July 2021',
                      mainTitle: 'Faculty Of Engineering Tanta University',
                      description:
                          'Department: Computer and Automatic Control\nGraduation Project: Online Exam Platform - Exclent "A"',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: CustomSplitColumn(
                  categoryName: 'Professional Experience',
                  icon: Icon(Icons.work),
                  children: [],
                ),
              ),
            ),
          ],
        ),

        // Old experience view
        // const SizedBox(height: 20),
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     for (int rowIndex = 0; rowIndex < kExperiencesList.length / 2; rowIndex++)
        //       Expanded(
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.stretch,
        //           children: [
        //             for (int index = 0; index < kExperiencesList.length / 2; index++)
        //               Padding(
        //                 padding: const EdgeInsets.all(8.0),
        //                 child: ExperienceContainer(experience: kExperiencesList.elementAt(2 * rowIndex + index)),
        //               )
        //           ],
        //         ),
        //       ),
        //   ],
        // ),
      ],
    );
  }
}
