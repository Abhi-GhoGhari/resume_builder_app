import 'package:flutter/material.dart';

import '../../../../../utils/global_utils.dart';
import '../../../../../utils/widget/my_snackbar.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

GlobalKey<FormState> projectKey = GlobalKey<FormState>();

class _ProjectPageState extends State<ProjectPage> {
  bool? fv = false;
  bool? sv = false;
  bool? tv = false;
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
            "Project's Detail's Page",
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
              key: projectKey,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                child: Column(
                  children: [
                    //Project Title
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onSaved: (val) {
                              Global.global.project_title = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Project Title!!";
                              } else {
                                return null;
                              }
                            },
                            initialValue: Global.global.project_title,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              // prefixIcon: const Icon(Icons.person),
                              hintText: "Enter Project Title",
                              labelText: "Project Title",
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

                    //Language
                    const Text(
                      "Languages",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Column(
                      children: [
                        //Dart
                        Row(
                          children: [
                            Checkbox(
                              value: fv,
                              activeColor: const Color(0xff789461),
                              onChanged: (val) {
                                Global.global.dart;
                                setState(
                                  () {
                                    fv = val;
                                  },
                                );
                              },
                            ),
                            const Text("Dart"),
                          ],
                        ),
                        //C++
                        Row(
                          children: [
                            Checkbox(
                              value: sv,
                              activeColor: const Color(0xff789461),
                              onChanged: (val) {
                                Global.global.cpp;
                                setState(() {
                                  sv = val;
                                });
                              },
                            ),
                            const Text("C++"),
                          ],
                        ),
                        //Flutter
                        Row(
                          children: [
                            Checkbox(
                              value: tv,
                              activeColor: const Color(0xff789461),
                              onChanged: (val) {
                                Global.global.flutter;
                                setState(() {
                                  tv = val;
                                });
                              },
                            ),
                            const Text("Flutter"),
                          ],
                        ),
                      ],
                    ),

                    //Roles
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onSaved: (val) {
                              Global.global.roles = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Roles!!";
                              } else {
                                return null;
                              }
                            },
                            initialValue: Global.global.roles,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              // prefixIcon: const Icon(Icons.person),
                              hintText: "Enter Roles",
                              labelText: "Rolse",
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

                    //Technologies
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onSaved: (val) {
                              Global.global.technologies = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Technologies!!";
                              } else {
                                return null;
                              }
                            },
                            initialValue: Global.global.technologies,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              // prefixIcon: const Icon(Icons.person),
                              hintText: "Enter Technologies Name 1,2,..",
                              labelText: "Enter Technologies",
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

                    //Project Description
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onSaved: (val) {
                              Global.global.project_description = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Project Description!!";
                              } else {
                                return null;
                              }
                            },
                            initialValue: Global.global.project_description,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              // prefixIcon: const Icon(Icons.person),
                              hintText: "Enter Project Description",
                              labelText: "Project Description",
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

                    //save&reset
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            bool valideted =
                                projectKey.currentState!.validate();
                            if (valideted) {
                              projectKey.currentState!.save();
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
                            projectKey.currentState!.reset();
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
