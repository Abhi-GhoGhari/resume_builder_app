import 'package:flutter/material.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option&personal_info_page/build_option_page.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option&personal_info_page/components/about_page/about_page.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option&personal_info_page/components/achievements_page/achievements_page.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option&personal_info_page/components/certified_courses_page/certified_courses_page.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option&personal_info_page/components/education_page/education_page.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option&personal_info_page/components/experience_page/experience_page.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option&personal_info_page/components/hobbies_page/hobbies_page.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option&personal_info_page/components/project_page/project_page.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option&personal_info_page/components/technical_skills_page/tachnical_skills_page.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option&personal_info_page/personal_info_page.dart';
import 'package:resume_builder_app/pages/build_option_page/pdf_page/pdf_page.dart';
import 'package:resume_builder_app/pages/home_page/home_page.dart';
import 'package:resume_builder_app/pages/splash_screen/splash_screen.dart';
import 'package:resume_builder_app/utils/route_utils.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.splashscreen: (context) => const SplashScreen(),
        MyRoutes.homepage: (context) => const HomePage(),
        MyRoutes.pdfpage: (context) => const PdfPage(),
        MyRoutes.buildoptionpage: (context) => const BuildOptionPage(),
        MyRoutes.buildOptions[0]['route']: (context) =>
            const PersonalInfoPage(),
        MyRoutes.buildOptions[5]['route']: (context) =>
            const TechnicalSkillsPage(),
        MyRoutes.buildOptions[1]['route']: (context) => const EducationPage(),
        MyRoutes.buildOptions[2]['route']: (context) => const ExperiencePage(),
        MyRoutes.buildOptions[6]['route']: (context) => const HobbiesPage(),
        MyRoutes.buildOptions[3]['route']: (context) =>
            const CertifiedCoursesPage(),
        MyRoutes.buildOptions[4]['route']: (context) => const ProjectPage(),
        MyRoutes.buildOptions[8]['route']: (context) =>
            const AchievementsPage(),
        MyRoutes.buildOptions[7]['route']: (context) => const AboutPage(),
      },
    );
  }
}
