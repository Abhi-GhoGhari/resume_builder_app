import 'package:flutter/material.dart';
import '../../../../../utils/global_utils.dart';

class CertifiedCoursesPage extends StatefulWidget {
  const CertifiedCoursesPage({super.key});

  @override
  State<CertifiedCoursesPage> createState() => _CertifiedCoursesPageState();
}

class _CertifiedCoursesPageState extends State<CertifiedCoursesPage> {
  @override
  void initState() {
    if (Global.certfcontroller.length > 2) {
      Global.certfcontroller.removeWhere((element) => element.text.isNotEmpty);
    }
    if (Global.certfcontroller.isEmpty || Global.certfcontroller.length < 2) {
      if (Global.certfcontroller.length == 1) {
        Global.certfcontroller.add(
          TextEditingController(),
        );
      } else {
        Global.certfcontroller.addAll(
          [
            TextEditingController(),
            TextEditingController(),
          ],
        );
      }
    }
    super.initState();
  }

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
            "Certified Course Page",
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
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...List.generate(
                      Global.certfcontroller.length,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: Global.certfcontroller[index],
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: "Enter Your Certified Course",
                                  labelText: "Your Certified Course",
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
                            IconButton(
                              onPressed: () {
                                Global.certfcontroller.removeAt(index);
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.highlight_remove_outlined,
                                shadows: [
                                  Shadow(
                                    offset: Offset(5, 5),
                                    color: Colors.black26,
                                    blurRadius: 20,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Global.certfcontroller.add(TextEditingController());
                        setState(
                          () {},
                        );
                      },
                      icon: const Icon(
                        Icons.add_circle_outline_outlined,
                        size: 33,
                        shadows: [
                          Shadow(
                            offset: Offset(5, 5),
                            color: Colors.black26,
                            blurRadius: 20,
                          ),
                        ],
                      ),
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
