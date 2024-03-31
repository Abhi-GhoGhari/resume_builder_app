import 'dart:io';

import 'package:flutter/cupertino.dart';

class Global {
  String? name,
      email,
      phone,
      password,
      address,
      //
      ///
      /// //
      course_degree,
      school_college_insitute,
      s_c_i_persentage,
      passing_year,
      //
      compony_name,
      employee_status,
      quality_test_engineer,
      previousli_employe,
      currently_employe,
      role,
      //
      project_title,
      roles,
      language,
      technologies,
      project_description,
      dart,
      cpp,
      flutter,
      //
      certified_course;
  File? image;

  Global._();

  static final Global global = Global._();

  void reset() {
    name = email = phone = password = address = null;
  }

  static List<TextEditingController> skillcontroller = [
    TextEditingController(),
    TextEditingController(),
  ];
  static List<TextEditingController> certfcontroller = [
    TextEditingController(),
    TextEditingController(),
  ];
  static List<TextEditingController> hobbiecontroller = [
    TextEditingController(),
    TextEditingController(),
  ];
  static List<TextEditingController> achicontroller = [
    TextEditingController(),
    TextEditingController(),
  ];
}
