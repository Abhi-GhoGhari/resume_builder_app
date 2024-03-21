import 'package:flutter/material.dart';

import '../../../../../utils/global_utils.dart';
import '../../../../../utils/widget/my_snackbar.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  bool employeeSelection = false;
  bool onemployeeSelected = false;

  GlobalKey<FormState> experienceonKey = GlobalKey<FormState>();

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
            "Experience Detail's Page",
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
              key: experienceonKey,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                child: Column(
                  children: [
                    //Compony Name
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onSaved: (val) {
                              Global.global.compony_name = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Company Name!!";
                              } else {
                                return null;
                              }
                            },
                            initialValue: Global.global.compony_name,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              // prefixIcon: const Icon(Icons.person),
                              hintText: "Enter Company Name",
                              labelText: "Compony Name",
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

                    //Quality Test Engineer
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onSaved: (val) {
                              Global.global.quality_test_engineer = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Quality Test Engineer!!";
                              } else {
                                return null;
                              }
                            },
                            initialValue: Global.global.quality_test_engineer,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              // prefixIcon: const Icon(Icons.person),
                              hintText: "Quality Test Engineer",
                              labelText: "Enter School/College/Institute",
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
                    //Roles
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onSaved: (val) {
                              Global.global.role = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Roles!!";
                              } else {
                                return null;
                              }
                            },
                            initialValue: Global.global.role,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              // prefixIcon: const Icon(Icons.person),
                              hintText: "Enter Roles",
                              labelText: "Role",
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

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Employed Status",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        RadioListTile(
                          activeColor: const Color(0xff789461),
                          value: "Previously Employee",
                          groupValue: Global.global.employee_status,
                          onChanged: (val) {
                            Global.global.employee_status = val;
                            setState(() {});
                          },
                          title: const Text("Previously Employee"),
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                        RadioListTile(
                          value: "Currently Employee",
                          activeColor: const Color(0xff789461),
                          groupValue: Global.global.employee_status,
                          onChanged: (val) {
                            Global.global.employee_status = val;
                            setState(() {});
                          },
                          title: const Text("Currently Employee"),
                          controlAffinity: ListTileControlAffinity.trailing,
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
                                experienceonKey.currentState!.validate();
                            if (valideted) {
                              experienceonKey.currentState!.save();
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
                            experienceonKey.currentState!.reset();
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
