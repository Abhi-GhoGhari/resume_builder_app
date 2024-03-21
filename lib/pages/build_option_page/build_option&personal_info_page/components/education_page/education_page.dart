import 'package:flutter/material.dart';

import '../../../../../utils/global_utils.dart';
import '../../../../../utils/widget/my_snackbar.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

GlobalKey<FormState> educationKey = GlobalKey<FormState>();

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Education Detail's Page",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          flexibleSpace: const Image(
            image: NetworkImage(
              "https://i.pinimg.com/564x/9b/20/0d/9b200dc0a860cd5e4ef8e4d0cea1c15a.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://i.pinimg.com/564x/9b/20/0d/9b200dc0a860cd5e4ef8e4d0cea1c15a.jpg",
              ),
            ),
          ),
          child: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Form(
              key: educationKey,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                child: Column(
                  children: [
                    //Course/Degree
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onSaved: (val) {
                              Global.global.course_degree = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Course/Degree!!";
                              } else {
                                return null;
                              }
                            },
                            initialValue: Global.global.course_degree,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              // prefixIcon: const Icon(Icons.person),
                              hintText: "Enter Course/Degree",
                              labelText: "Course/Degree",
                              hintStyle: const TextStyle(
                                color: Colors.black54,
                              ),
                              labelStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(7),
                    ),

                    //School/College/Institute
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onSaved: (val) {
                              Global.global.school_college_insitute = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter School/College/Institute!!";
                              } else {
                                return null;
                              }
                            },
                            initialValue: Global.global.school_college_insitute,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              // prefixIcon: const Icon(Icons.person),
                              hintText: "Enter School/College/Institute",
                              labelText: "School/College/Institute",
                              hintStyle: const TextStyle(
                                color: Colors.black54,
                              ),
                              labelStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(7),
                    ),

                    //S,C,I,Persentage
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onSaved: (val) {
                              Global.global.s_c_i_persentage = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Persentage of School/College/Institute!!";
                              } else {
                                return null;
                              }
                            },
                            initialValue: Global.global.s_c_i_persentage,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              // prefixIcon: const Icon(Icons.person),
                              hintText:
                                  "Enter Persentage of School/College/Institute",
                              labelText:
                                  "Persentage of School/College/Institute",
                              hintStyle: const TextStyle(
                                color: Colors.black54,
                              ),
                              labelStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(7),
                    ),

                    //Year of pass
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onSaved: (val) {
                              Global.global.passing_year = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Passing Year!!";
                              } else {
                                return null;
                              }
                            },
                            initialValue: Global.global.passing_year,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              // prefixIcon: const Icon(Icons.person),
                              hintText: "Enter Passing Year",
                              labelText: "Passing Year",
                              hintStyle: const TextStyle(
                                color: Colors.black54,
                              ),
                              labelStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            bool valideted =
                                educationKey.currentState!.validate();
                            if (valideted) {
                              educationKey.currentState!.save();
                            }
                            ScaffoldMessenger.of(context).showSnackBar(
                              mysnackbar(
                                  content: valideted
                                      ? "Form Saved"
                                      : "Failed  Validation!!",
                                  color: valideted ? Colors.green : Colors.red),
                            );
                          },
                          child: const Text("SAVE"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Global.global.reset();
                            educationKey.currentState!.reset();
                          },
                          child: const Text("RESET"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
