import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/route_utils.dart';

class BuildOptionPage extends StatelessWidget {
  const BuildOptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Build Option",
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
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              child: Column(
                children: MyRoutes.buildOptions
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ListTile(
                            leading: Image.asset(
                              e['icon'],
                              height: 30,
                            ),
                            title: Text(
                              e['title'],
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  e['route'],
                                );
                              },
                              icon: const Icon(
                                Icons.arrow_right,
                                size: 28,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xff789461),
        onPressed: () => Navigator.pushNamed(
          context,
          MyRoutes.pdfpage,
        ),
        icon: const Icon(
          Icons.picture_as_pdf,
          color: Colors.black,
        ),
        label: const Text(
          "Create PDF",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
