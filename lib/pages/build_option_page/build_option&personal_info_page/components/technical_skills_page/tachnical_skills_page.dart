import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/global_utils.dart';

class TechnicalSkillsPage extends StatefulWidget {
  const TechnicalSkillsPage({super.key});
  @override
  State<TechnicalSkillsPage> createState() => _TechnicalSkillsPageState();
}

class _TechnicalSkillsPageState extends State<TechnicalSkillsPage> {
  @override
  void initState() {
    if (Global.skillcontroller.length > 2) {
      Global.skillcontroller.removeWhere((element) => element.text.isNotEmpty);
    }
    if (Global.skillcontroller.isEmpty || Global.skillcontroller.length < 2) {
      if (Global.skillcontroller.length == 1) {
        Global.skillcontroller.add(
          TextEditingController(),
        );
      } else {
        Global.skillcontroller.addAll(
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
          // backgroundColor: Colors.teal,
          centerTitle: true,
          title: const Text(
            "Technical Skills Page",
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
                      Global.skillcontroller.length,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: Global.skillcontroller[index],
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: "Enter Your Skills",
                                  labelText: "Your Skills",
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
                                Global.skillcontroller.removeAt(index);
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
                        Global.skillcontroller.add(TextEditingController());
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
