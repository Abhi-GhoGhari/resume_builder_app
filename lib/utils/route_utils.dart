class MyRoutes {
  static String splashscreen = "/";
  static String homepage = "home_page";
  static String buildoptionpage = "build_option_page";
  static String pdfpage = "pdf_page";
  static String educationpage = "education_page";
  static String experiencepage = "experience_page";
  static String hobbiespage = "hobbies_page";
  static String certifiedcoursespage = "certified_courses_page";
  static String projectpage = "project_page";
  static String achievementspage = "achievements_page";
  static String aboutpage = "about_page";
  static String iconPath = "lib/assets/icons";

  static List buildOptions = [
    {
      'title': 'Personal info',
      'route': 'personal_info',
      'icon': '$iconPath/details.png',
    },
    {
      'title': 'Education',
      'route': 'education',
      'icon': '$iconPath/education.png',
    },
    {
      'title': 'Experience ',
      'route': 'experience',
      'icon': '$iconPath/experience.png',
    },
    {
      'title': 'Certified courses',
      'route': 'certified_courses',
      'icon': '$iconPath/certificate.png',
    },
    {
      'title': 'Projects ',
      'route': 'projects',
      'icon': '$iconPath/projects.png',
    },
    {
      'title': 'Technical skills',
      'route': 'technical_skills',
      'icon': '$iconPath/skills.png',
    },
    {
      'title': 'Hobbies',
      'route': 'hobbies',
      'icon': '$iconPath/hobbies.png',
    },
    {
      'title': 'About',
      'route': 'about_info',
      'icon': '$iconPath/info.png',
    },
    {
      'title': 'Achievements',
      'route': 'achievements',
      'icon': '$iconPath/achievement.png',
    },
  ];
}
