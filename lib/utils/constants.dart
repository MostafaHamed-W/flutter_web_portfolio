import 'package:flutter/material.dart';
import 'package:web_portfolio/services/whats_app_service.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/views/experience/models/experience_info.dart';

const kSkillsNames = [
  "Flutter",
  "Dart",
  "Riverpod",
  "Bloc",
  "GetX",
  "Firebase",
  "Github",
  'IOS',
];

const personalNetworkPhoto = 'https://res.cloudinary.com/doqgqhqm6/image/upload/v1740687928/personal_photo_yjisnu.png';
const kAvertaFont = 'Averta';
const kSaipersGate = 'assets/images/projects/saipers_gate.png';
const kOdexss = 'assets/images/projects/odexss.png';
const kAlameya = 'assets/images/projects/alameya.png';
const kInstaClone = 'assets/images/projects/instagram.png';
const kBookHunter = 'assets/images/projects/book_hunter.png';
const kGameFusion = 'assets/images/projects/game_fusion.png';
const kCartScope = 'assets/images/projects/cart_scope.png';
const kSpotSavvy = 'assets/images/projects/spot_savvy.png';
const kBrightMemo = 'assets/images/projects/bight_memo.png';
const kSpotSavvyBlack = 'assets/images/projects/spot_savvy_black.png';
const kPulseTalk = 'assets/images/projects/pulse_talk.png';
const kSpaxet = 'assets/images/projects/spaxet.png';
const kStepsCrm = 'assets/images/projects/stepsCrm.png';

const List<String> kProjectsPohotos = [
  kOdexss,
  kSaipersGate,
  kSpaxet,
  kGameFusion,
  kAlameya,
  kStepsCrm,
  kInstaClone,
  kBookHunter,
  kSpotSavvy,
  kCartScope,
  kBrightMemo,
  kPulseTalk,
];

const kScreenPadding = EdgeInsets.symmetric(horizontal: 60);

class HireMeButton extends StatelessWidget {
  const HireMeButton({super.key, this.isSmall = false});
  final bool isSmall;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        WhatsAppService.openWhatsApp("+201022212981", "Hello Mostafa! I'm interested in hiring you.");
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.kPrimaryColor,
        padding: EdgeInsets.symmetric(vertical: isSmall ? 10 : 17, horizontal: isSmall ? 8 : 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        'Hire Me',
        style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white, fontSize: isSmall ? 12 : null),
      ),
    );
  }
}

final kExperiencesList = [
  ExperienceInfo(
    company: 'Mobile Application Developer at Expert CO.LTD',
    timeline: 'Oct 2023 to Present',
    descriptions: ['Riyadh, Saudi Arabia · Remote · Full-time\nWorking as Mobile Application Developer\nDeveloping Odex SS Mobile Application\nFor employees and managers'],
  ),
  ExperienceInfo(
    company: 'Mobile Application Developer at SAIP',
    timeline: 'Jan 2024 to Jun 2023',
    descriptions: [
      'Riyadh, Saudi Arabia · Remote · Part-time\nWorking as Mobile Application Develoeper @ Saudi Authority for Intellectual Property',
    ],
  ),
  ExperienceInfo(
    company: 'Mobile Application Developer @Tanta University UMIS',
    timeline: 'Jan 2023 to Sep 2023',
    descriptions: [
      'Tanta, Egypt · On-site · Full-time\nUniversity Management Information Systems (MIS)\nWorking as flutter develoepr for one year\nDeveloped and implemented UMIS application from scratch',
    ],
  ),
];

const kTechnicalSkills = [
  '◦ Mobile Application Development',
  '◦ Dart - Flutter - Responsive Design',
  '◦ OOP, SOLID Principles',
  '◦ State Management (Riverpod, Provider,  Bloc , GetX)',
  "◦ Integrating with restful Api’s (Dio, Http, APIs, JSON) ",
  "◦ Dealing with local storage (Hive, Shared Preferences)",
  "◦ Integrating with Firebase services",
  "◦ Firestore, Authentication, Realtime Database",
  "◦ Architecture patterns",
  "◦ MVVM, Clean Architecture, DDD, Layered Architecture",
  "◦ Basic Knowledge about Design Patterns",
  "◦ Socket IO, Realtime",
  "◦ Google Maps, Firebase",
  "◦ Payment Gateway",
  "◦ Testing and Debugging",
  "◦ Git, Github",
  "◦ Agile Development",
  "◦ Basic Knowledge about Native iOS",
  "◦ Swift, Xcode",
];

const kSoftSkills = [
  '◦ Very quick learner',
  '◦ Self motivated, hardworking',
  '◦ Good communication skills',
  '◦ Presentation and speaker',
];
